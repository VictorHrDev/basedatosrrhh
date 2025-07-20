import datetime

def get_employee_work_periods_from_db(employee_id):
    """
    Función simulada para obtener los períodos de trabajo de un empleado desde la base de datos.
    En una aplicación real, esto consultaría la tabla 'historial_laboral_interno'.
    Retorna una lista de diccionarios, cada uno representando un período de trabajo.
    'fecha_fin' puede ser None si el período está en curso.
    """
    # Datos de ejemplo (reemplazar con una consulta real a la base de datos)
    if employee_id == 1:
        return [
            {'fecha_inicio': datetime.date(2018, 1, 1), 'fecha_fin': datetime.date(2020, 12, 31), 'estado_empleado': 'Cesado'},
            {'fecha_inicio': datetime.date(2021, 3, 1), 'fecha_fin': None, 'estado_empleado': 'Activo'}
        ]
    elif employee_id == 2:
        return [
            {'fecha_inicio': datetime.date(2023, 5, 15), 'fecha_fin': None, 'estado_empleado': 'Activo'}
        ]
    else:
        return []

def get_vacation_days_taken_from_db(employee_id):
    """
    Función simulada para obtener los días de vacaciones tomados por un empleado desde la base de datos.
    En una aplicación real, esto consultaría la tabla 'vacaciones_gozadas'.
    Retorna una lista de diccionarios, cada uno representando un período de vacaciones tomado.
    """
    # Datos de ejemplo (reemplazar con una consulta real a la base de datos)
    if employee_id == 1:
        return [
            {'dias_gozados': 10, 'fecha_inicio': datetime.date(2019, 7, 1), 'fecha_fin': datetime.date(2019, 7, 10)},
            {'dias_gozados': 5, 'fecha_inicio': datetime.date(2022, 1, 10), 'fecha_fin': datetime.date(2022, 1, 14)}
        ]
    elif employee_id == 2:
        return []
    else:
        return []

def get_annual_vacation_entitlement(seniority_years_completed):
    """
    Calcula el derecho anual a vacaciones basado en los años de servicio completados
    según la legislación ecuatoriana.
    """
    if seniority_years_completed < 5:
        return 15
    else:
        # A partir del sexto año (5 años completados), 1 día adicional por año, máximo 30 días.
        # seniority_years_completed = 5 (6to año de servicio) -> 15 + (5 - 4) = 16 días
        entitlement = 15 + (seniority_years_completed - 4)
        return min(entitlement, 30)

def calculate_accumulated_vacation_days(employee_id, current_date):
    """
    Calcula el total de días de vacaciones acumulados para un empleado hasta la fecha actual,
    considerando todos los períodos de trabajo y la acumulación mensual.
    """
    work_periods = get_employee_work_periods_from_db(employee_id)
    if not work_periods:
        return 0.0

    # Normalizar y ordenar los períodos de trabajo, ajustando las fechas de fin a current_date
    normalized_periods = []
    for period in work_periods:
        start = period['fecha_inicio']
        end = period['fecha_fin'] if period['fecha_fin'] else current_date
        # Asegurarse de que el período no se extienda más allá de current_date
        end = min(end, current_date)
        if start <= end:
            normalized_periods.append({'start': start, 'end': end})
    
    normalized_periods.sort(key=lambda x: x['start'])

    # Generar una lista de todos los meses únicos trabajados
    # Esto maneja períodos superpuestos contando cada mes solo una vez
    all_months_worked = set()
    for period in normalized_periods:
        current_month_start = period['start'].replace(day=1)
        # Iterar mes a mes hasta el final del período (o current_date)
        while current_month_start <= period['end'].replace(day=1):
            all_months_worked.add((current_month_start.year, current_month_start.month))
            # Mover al siguiente mes
            if current_month_start.month == 12:
                current_month_start = current_month_start.replace(year=current_month_start.year + 1, month=1)
            else:
                current_month_start = current_month_start.replace(month=current_month_start.month + 1)
    
    sorted_months = sorted(list(all_months_worked))

    total_accumulated_days = 0.0
    seniority_months_count = 0

    for year, month in sorted_months:
        seniority_months_count += 1
        # Calcular los años de servicio completados basados en seniority_months_count
        # Por ejemplo, si seniority_months_count es 12, 1 año completado. Si 60, 5 años completados.
        seniority_years_completed = (seniority_months_count - 1) // 12 # División entera para obtener años completos

        annual_entitlement = get_annual_vacation_entitlement(seniority_years_completed)
        total_accumulated_days += (annual_entitlement / 12.0) # Acumulación mensual

    return total_accumulated_days

def get_available_vacation_days(employee_id, query_date=None):
    """
    Calcula los días de vacaciones disponibles para un empleado dado.
    query_date: La fecha para la cual se calculan los días disponibles. Por defecto es la fecha actual.
    """
    if query_date is None:
        query_date = datetime.date.today()

    accumulated_days = calculate_accumulated_vacation_days(employee_id, query_date)
    
    total_days_taken = 0
    vacation_records = get_vacation_days_taken_from_db(employee_id)
    for record in vacation_records:
        total_days_taken += record['dias_gozados']
    
    available_days = accumulated_days - total_days_taken
    return round(available_days, 2) # Redondear a 2 decimales para uso práctico

# --- Ejemplo de Uso ---
# Puedes descomentar las siguientes líneas para probar la lógica:
# employee_id = 1
# current_date = datetime.date(2025, 7, 19) # Fecha de consulta de ejemplo

# available_vacation = get_available_vacation_days(employee_id, current_date)
# print(f"El empleado {employee_id} tiene {available_vacation} días de vacaciones disponibles al {current_date}.")

# employee_id = 2
# available_date = datetime.date(2025, 7, 19)
# available_vacation = get_available_vacation_days(employee_id, current_date)
# print(f"El empleado {employee_id} tiene {available_vacation} días de vacaciones disponibles al {current_date}.")