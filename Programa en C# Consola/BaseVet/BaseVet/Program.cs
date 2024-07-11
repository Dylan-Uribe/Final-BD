using System;
using System.Data.SqlClient;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Interactuando con la BD desde la consola");
            string connString = "Data Source=(local)\\;Initial Catalog=VeterinariaFinal;Integrated Security=True;TrustServerCertificate=True";
            SqlConnection conn = new SqlConnection(connString);
            try
            {
                conn.Open();
                Console.WriteLine("Conexión exitosa");
            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
                Environment.Exit(0);
            }

            while (true)
            {
                Console.Clear();
                Console.WriteLine("Menú Principal:");
                Console.WriteLine("1. Insertar Datos");
                Console.WriteLine("2. Eliminar Datos");
                Console.WriteLine("3. Actualizar Datos");
                Console.WriteLine("4. Consultar Datos");
                Console.WriteLine("5. Generar Nota de Cobranza");
                Console.WriteLine("6. Generar Reporte");
                Console.WriteLine("7. Salir");
                Console.Write("Seleccione una opción: ");
                string opcion = Console.ReadLine();

                switch (opcion)
                {
                    case "1":
                        MenuInsertarDatos(conn);
                        break;
                    case "2":
                        MenuEliminarDatos(conn);
                        break;
                    case "3":
                        MenuActualizarDatos(conn);
                        break;
                    case "4":
                        MenuConsultarDatos(conn);
                        break;
                    case "5":
                        GenerarNotaCobranza(conn);
                        break;
                    case "6":
                        GenerarReporte(conn);
                        break;
                    case "7":
                        conn.Close();
                        return;
                    default:
                        Console.WriteLine("Opción no válida. Intente de nuevo.");
                        break;
                }
            }
        }

        static void MenuInsertarDatos(SqlConnection conn)
        {
            while (true)
            {
                Console.Clear();
                Console.WriteLine("Menú de Inserción de Datos:");
                Console.WriteLine("1. Insertar Cliente");
                Console.WriteLine("2. Insertar Persona");
                Console.WriteLine("3. Insertar PersonaCliente");
                Console.WriteLine("4. Insertar Mascota");
                Console.WriteLine("5. Insertar Histórico de Peso");
                Console.WriteLine("6. Insertar Histórico Clínico");
                Console.WriteLine("7. Insertar Vacuna");
                Console.WriteLine("8. Insertar Calendario de Vacunación");
                Console.WriteLine("9. Insertar Huésped");
                Console.WriteLine("10. Insertar Producto");
                Console.WriteLine("11. Insertar Categoría");
                Console.WriteLine("12. Insertar Detalle");
                Console.WriteLine("13. Regresar al Menú Principal");
                Console.Write("Seleccione una opción: ");
                string opcion = Console.ReadLine();

                switch (opcion)
                {
                    case "1":
                        InsertarCliente(conn);
                        break;
                    case "2":
                        InsertarPersona(conn);
                        break;
                    case "3":
                        InsertarPersonaCliente(conn);
                        break;
                    case "4":
                        InsertarMascota(conn);
                        break;
                    case "5":
                        InsertarHistoricoPeso(conn);
                        break;
                    case "6":
                        InsertarHistoricoClinico(conn);
                        break;
                    case "7":
                        InsertarVacuna(conn);
                        break;
                    case "8":
                        InsertarCalendarioVacunacion(conn);
                        break;
                    case "9":
                        InsertarHuesped(conn);
                        break;
                    case "10":
                        InsertarProducto(conn);
                        break;
                    case "11":
                        InsertarCategoria(conn);
                        break;
                    case "12":
                        InsertarDetalle(conn);
                        break;
                    case "13":
                        return;
                    default:
                        Console.WriteLine("Opción no válida. Intente de nuevo.");
                        break;
                }
                Console.WriteLine("Presione cualquier tecla para continuar...");
                Console.ReadKey();
            }
        }

        static void MenuEliminarDatos(SqlConnection conn)
        {
            while (true)
            {
                Console.Clear();
                Console.WriteLine("Menú de Eliminación de Datos:");
                Console.WriteLine("1. Eliminar Cliente");
                Console.WriteLine("2. Eliminar Persona");
                Console.WriteLine("3. Eliminar PersonaCliente");
                Console.WriteLine("4. Eliminar Mascota");
                Console.WriteLine("5. Eliminar Histórico de Peso");
                Console.WriteLine("6. Eliminar Histórico Clínico");
                Console.WriteLine("7. Eliminar Vacuna");
                Console.WriteLine("8. Eliminar Calendario de Vacunación");
                Console.WriteLine("9. Eliminar Huésped");
                Console.WriteLine("10. Eliminar Producto");
                Console.WriteLine("11. Eliminar Categoría");
                Console.WriteLine("12. Eliminar Detalle");
                Console.WriteLine("13. Regresar al Menú Principal");
                Console.Write("Seleccione una opción: ");
                string opcion = Console.ReadLine();

                switch (opcion)
                {
                    case "1":
                        EliminarCliente(conn);
                        break;
                    case "2":
                        EliminarPersona(conn);
                        break;
                    case "3":
                        EliminarPersonaCliente(conn);
                        break;
                    case "4":
                        EliminarMascota(conn);
                        break;
                    case "5":
                        EliminarHistoricoPeso(conn);
                        break;
                    case "6":
                        EliminarHistoricoClinico(conn);
                        break;
                    case "7":
                        EliminarVacuna(conn);
                        break;
                    case "8":
                        EliminarCalendarioVacunacion(conn);
                        break;
                    case "9":
                        EliminarHuesped(conn);
                        break;
                    case "10":
                        EliminarProducto(conn);
                        break;
                    case "11":
                        EliminarCategoria(conn);
                        break;
                    case "12":
                        EliminarDetalle(conn);
                        break;
                    case "13":
                        return;
                    default:
                        Console.WriteLine("Opción no válida. Intente de nuevo.");
                        break;
                }
                Console.WriteLine("Presione cualquier tecla para continuar...");
                Console.ReadKey();
            }
        }

        static void MenuActualizarDatos(SqlConnection conn)
        {
            while (true)
            {
                Console.Clear();
                Console.WriteLine("Menú de Actualizacion de Datos:");
                Console.WriteLine("1. Actualizar Cliente");
                Console.WriteLine("2. Actualizar Persona");
                Console.WriteLine("3. Actualizar PersonaCliente");
                Console.WriteLine("4. Actualizar Mascota");
                Console.WriteLine("5. Actualizar Histórico de Peso");
                Console.WriteLine("6. Actualizar Histórico Clínico");
                Console.WriteLine("7. Actualizar Vacuna");
                Console.WriteLine("8. Actualizar Calendario de Vacunación");
                Console.WriteLine("9. Actualizar Huésped");
                Console.WriteLine("10. Actualizar Producto");
                Console.WriteLine("11. Actualizar Categoría");
                Console.WriteLine("12. Actualizar Detalle");
                Console.WriteLine("13. Regresar al Menú Principal");
                Console.Write("Seleccione una opción: ");
                string opcion = Console.ReadLine();

                switch (opcion)
                {
                    case "1":
                        ActualizarCliente(conn);
                        break;
                    case "2":
                        ActualizarPersona(conn);
                        break;
                    case "3":
                        ActualizarPersonaCliente(conn);
                        break;
                    case "4":
                        ActualizarMascota(conn);
                        break;
                    case "5":
                        ActualizarHistoricoPeso(conn);
                        break;
                    case "6":
                        ActualizarHistoricoClinico(conn);
                        break;
                    case "7":
                        ActualizarVacuna(conn);
                        break;
                    case "8":
                        ActualizarCalendarioVacunacion(conn);
                        break;
                    case "9":
                        ActualizarHuesped(conn);
                        break;
                    case "10":
                        ActualizarProducto(conn);
                        break;
                    case "11":
                        ActualizarCategoria(conn);
                        break;
                    case "12":
                        ActualizarDetalle(conn);
                        break;
                    case "13":
                        return;
                    default:
                        Console.WriteLine("Opción no válida. Intente de nuevo.");
                        break;
                }
                Console.WriteLine("Presione cualquier tecla para continuar...");
                Console.ReadKey();
            }
        }

        static void MenuConsultarDatos(SqlConnection conn)
        {
            while (true)
            {
                Console.Clear();
                Console.WriteLine("Menú de Consultas:");
                Console.WriteLine("1. Consultar Clientes");
                Console.WriteLine("2. Consultar Personas");
                Console.WriteLine("3. Consultar PersonasClientes");
                Console.WriteLine("4. Consultar Mascotas");
                Console.WriteLine("5. Consultar Histórico de Peso");
                Console.WriteLine("6. Consultar Histórico Clínico");
                Console.WriteLine("7. Consultar Vacunas");
                Console.WriteLine("8. Consultar Calendarios de Vacunación");
                Console.WriteLine("9. Consultar Huéspedes");
                Console.WriteLine("10. Consultar Productos");
                Console.WriteLine("11. Consultar Categorías");
                Console.WriteLine("12. Consultar Detalles");
                Console.WriteLine("13. Regresar al Menú Principal");
                Console.Write("Seleccione una opción: ");
                string opcion = Console.ReadLine();

                switch (opcion)
                {
                    case "1":
                        ConsultarDatos(conn, "Clientes");
                        break;
                    case "2":
                        ConsultarDatos(conn, "Personas");
                        break;
                    case "3":
                        ConsultarDatos(conn, "PersonaCliente");
                        break;
                    case "4":
                        ConsultarDatos(conn, "Mascota");
                        break;
                    case "5":
                        ConsultarDatos(conn, "HistoricoPeso");
                        break;
                    case "6":
                        ConsultarDatos(conn, "HistoClinica");
                        break;
                    case "7":
                        ConsultarDatos(conn, "Vacunas");
                        break;
                    case "8":
                        ConsultarDatos(conn, "CalenVacuna");
                        break;
                    case "9":
                        ConsultarDatos(conn, "Huesped");
                        break;
                    case "10":
                        ConsultarDatos(conn, "Producto");
                        break;
                    case "11":
                        ConsultarDatos(conn, "Categoria");
                        break;
                    case "12":
                        ConsultarDatos(conn, "Detalle");
                        break;
                    case "13":
                        return;
                    default:
                        Console.WriteLine("Opción no válida. Intente de nuevo.");
                        break;
                }
                Console.WriteLine("Presione cualquier tecla para continuar...");
                Console.ReadKey();
            }
        }

        static void ConsultarDatos(SqlConnection conn, string tabla)
        {
            SqlCommand comando = new SqlCommand($"SELECT * FROM {tabla}", conn);
            SqlDataReader ejecutor = comando.ExecuteReader();
            Console.WriteLine($"Datos de la tabla {tabla}:");
            while (ejecutor.Read())
            {
                for (int i = 0; i < ejecutor.FieldCount; i++)
                {
                    Console.Write(ejecutor[i] + " | ");
                }
                Console.WriteLine();
            }
            ejecutor.Close();
        }

        static void GenerarNotaCobranza(SqlConnection conn)
        {
            Console.WriteLine("Ingrese el Id del Huésped:");
            string idHuesped = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_GenerarNotaCobranza", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);

                SqlDataReader ejecutor = cmd.ExecuteReader();
                while (ejecutor.Read())
                {
                    for (int i = 0; i < ejecutor.FieldCount; i++)
                    {
                        Console.Write(ejecutor[i] + " | ");
                    }
                    Console.WriteLine();
                }
                ejecutor.Close();
            }
            Console.WriteLine("Presione cualquier tecla para continuar...");
            Console.ReadKey();
        }

        static void GenerarReporte(SqlConnection conn)
        {
            Console.WriteLine("Ingrese la fecha de inicio (YYYY-MM-DD):");
            string fechaInicio = Console.ReadLine();
            Console.WriteLine("Ingrese la fecha de fin (YYYY-MM-DD):");
            string fechaFin = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ReporteHuespedesAtendidos", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@FechaFin", fechaFin);

                SqlDataReader ejecutor = cmd.ExecuteReader();
                while (ejecutor.Read())
                {
                    for (int i = 0; i < ejecutor.FieldCount; i++)
                    {
                        Console.Write(ejecutor[i] + " | ");
                    }
                    Console.WriteLine();
                }
                ejecutor.Close();
            }
            Console.WriteLine("Presione cualquier tecla para continuar...");
            Console.ReadKey();
        }

        static void InsertarCliente(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();
            Console.WriteLine("Ingrese Apellido:");
            string apellido = Console.ReadLine();
            Console.WriteLine("Ingrese CuentaBancaria:");
            string cuentaBancaria = Console.ReadLine();
            Console.WriteLine("Ingrese Dirección:");
            string direccion = Console.ReadLine();
            Console.WriteLine("Ingrese Teléfono Fijo:");
            string telefonoFijo = Console.ReadLine();
            Console.WriteLine("Ingrese Teléfono Celular:");
            string telefonoCel = Console.ReadLine();
            Console.WriteLine("Ingrese Email:");
            string email = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarCliente", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);
                cmd.Parameters.AddWithValue("@Apellido", apellido);
                cmd.Parameters.AddWithValue("@CuentaBancaria", cuentaBancaria);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@TelefonoFijo", telefonoFijo);
                cmd.Parameters.AddWithValue("@TelefonoCel", telefonoCel);
                cmd.Parameters.AddWithValue("@Email", email);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Cliente insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el cliente.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarPersona(SqlConnection conn)
        {
            Console.WriteLine("Ingrese CI:");
            string ci = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese ApellidoP:");
            string apellidoP = Console.ReadLine();
            Console.WriteLine("Ingrese ApellidoM:");
            string apellidoM = Console.ReadLine();
            Console.WriteLine("Ingrese Teléfono Celular:");
            string telefonoCel = Console.ReadLine();
            Console.WriteLine("Ingrese Dirección:");
            string direccion = Console.ReadLine();
            Console.WriteLine("Ingrese Email:");
            string email = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarPersona", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", ci);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@ApellidoP", apellidoP);
                cmd.Parameters.AddWithValue("@ApellidoM", apellidoM);
                cmd.Parameters.AddWithValue("@TelefonoCel", telefonoCel);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@Email", email);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Persona insertada exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar la persona.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarPersonaCliente(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();
            Console.WriteLine("Ingrese CI:");
            string ci = Console.ReadLine();
            Console.WriteLine("Fecha de Asociacion:");
            string fecha = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarPersonaCliente", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);
                cmd.Parameters.AddWithValue("@CI", ci);
                cmd.Parameters.AddWithValue("@FechaAsociacion", fecha);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("PersonaCliente insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar PersonaCliente.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarMascota(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Alias:");
            string alias = Console.ReadLine();
            Console.WriteLine("Ingrese Especie:");
            string especie = Console.ReadLine();
            Console.WriteLine("Ingrese Raza:");
            string raza = Console.ReadLine();
            Console.WriteLine("Ingrese Color:");
            string color = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Nacimiento (YYYY-MM-DD):");
            string fechaNacimiento = Console.ReadLine();
            Console.WriteLine("Ingrese Peso Actual:");
            string pesoActual = Console.ReadLine();
            Console.WriteLine("Es Paciente (1 para Sí, 0 para No):");
            bool esPaciente = Console.ReadLine() == "1";
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarMascota", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@Alias", alias);
                cmd.Parameters.AddWithValue("@Especie", especie);
                cmd.Parameters.AddWithValue("@Raza", raza);
                cmd.Parameters.AddWithValue("@Color", color);
                cmd.Parameters.AddWithValue("@FechaNacimiento", fechaNacimiento);
                cmd.Parameters.AddWithValue("@PesoActual", pesoActual);
                cmd.Parameters.AddWithValue("@EsPaciente", esPaciente);
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Mascota insertada exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar la mascota.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarHistoricoPeso(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha (YYYY-MM-DD):");
            string fecha = Console.ReadLine();
            Console.WriteLine("Ingrese Peso:");
            string peso = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarHistoricoPeso", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaVisita", fecha);
                cmd.Parameters.AddWithValue("@Peso", peso);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Histórico de Peso insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el histórico de peso.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarHistoricoClinico(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Consulta (YYYY-MM-DD):");
            string fechaConsulta = Console.ReadLine();
            Console.WriteLine("Ingrese Síntomas:");
            string sintomas = Console.ReadLine();
            Console.WriteLine("Ingrese Diagnóstico:");
            string diagnostico = Console.ReadLine();
            Console.WriteLine("Ingrese Tratamiento:");
            string tratamiento = Console.ReadLine();
            Console.WriteLine("Ingrese Medicación:");
            string medicacion = Console.ReadLine();
            Console.WriteLine("Ingrese Monto Pagado:");
            string montoPagado = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarHistoricoClinico", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaConsulta", fechaConsulta);
                cmd.Parameters.AddWithValue("@Sintomas", sintomas);
                cmd.Parameters.AddWithValue("@Diagnostico", diagnostico);
                cmd.Parameters.AddWithValue("@Tratamiento", tratamiento);
                cmd.Parameters.AddWithValue("@Medicación", medicacion);
                cmd.Parameters.AddWithValue("@MontoPagado", montoPagado);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Histórico Clínico insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el histórico clínico.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarVacuna(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdVacuna:");
            string idVacuna = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Laboratorio:");
            string lab = Console.ReadLine();
            Console.WriteLine("Ingrese enfermedad:");
            string enfermedadPrev = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarVacuna", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdVacuna", idVacuna);
                cmd.Parameters.AddWithValue("@NombreVacuna", nombre);
                cmd.Parameters.AddWithValue("@Laboratorio", lab);
                cmd.Parameters.AddWithValue("@EnfermedadPrev", enfermedadPrev);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Vacuna insertada exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar la vacuna.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarCalendarioVacunacion(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese IdVacuna:");
            string idVacuna = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha Prevista (YYYY-MM-DD):");
            string fechaPrev = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha Aplicación (YYYY-MM-DD):");
            string fechaApli = Console.ReadLine();
            Console.WriteLine("ingrese la dosis");
            string dosis = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarCalendarioVacunacion", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@IdVacuna", idVacuna);
                cmd.Parameters.AddWithValue("@FechaPrevista", fechaPrev);
                cmd.Parameters.AddWithValue("@FechaAplicacion", fechaApli);
                cmd.Parameters.AddWithValue("@Dosis", dosis);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Calendario de Vacunación insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el calendario de vacunación.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarHuesped(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdHuesped:");
            string idHuesped = Console.ReadLine();
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Ingreso (YYYY-MM-DD):");
            string fechaIngreso = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Salida (YYYY-MM-DD):");
            string fechaSalida = Console.ReadLine();
            Console.WriteLine("Ingrese Necesidades Especiales:");
            string necesidadesEspeciales = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarHuesped", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaIngreso", fechaIngreso);
                cmd.Parameters.AddWithValue("@FechaSalida", fechaSalida);
                cmd.Parameters.AddWithValue("@NecesidadesEspeciales", necesidadesEspeciales);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Huésped insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el huésped.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarProducto(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdProducto:");
            string idProducto = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Costo Unitario:");
            string costoUnitario = Console.ReadLine();
            Console.WriteLine("Ingrese IdCategoría:");
            string idCategoria = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarProducto", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);
                cmd.Parameters.AddWithValue("@Nombreprod", nombre);
                cmd.Parameters.AddWithValue("@CostoUnitario", costoUnitario);
                cmd.Parameters.AddWithValue("@IdCategoria", idCategoria);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Producto insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el producto.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarCategoria(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCategoria:");
            string idCategoria = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Descripción:");
            string descripcion = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarCategoria", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCategoria", idCategoria);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Descripcion", descripcion);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Categoría insertada exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar la categoría.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void InsertarDetalle(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdHuesped:");
            string idHuesped = Console.ReadLine();
            Console.WriteLine("Ingrese IdProducto:");
            string idProducto = Console.ReadLine();
            Console.WriteLine("Ingrese la fecha:");
            string fecha = Console.ReadLine();
            Console.WriteLine("Ingrese Cantidad:");
            string cantidad = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_InsertarDetalle", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);
                cmd.Parameters.AddWithValue("@Fecha", fecha);
                cmd.Parameters.AddWithValue("@Cantidad", cantidad);


                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Detalle insertado exitosamente.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar el detalle.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarCliente(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();
            Console.WriteLine("Ingrese Apellido:");
            string apellido = Console.ReadLine();
            Console.WriteLine("Ingrese CuentaBancaria:");
            string cuentaBancaria = Console.ReadLine();
            Console.WriteLine("Ingrese Dirección:");
            string direccion = Console.ReadLine();
            Console.WriteLine("Ingrese Teléfono Fijo:");
            string telefonoFijo = Console.ReadLine();
            Console.WriteLine("Ingrese Teléfono Celular:");
            string telefonoCel = Console.ReadLine();
            Console.WriteLine("Ingrese Email:");
            string email = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarCliente", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);
                cmd.Parameters.AddWithValue("@Apellido", apellido);
                cmd.Parameters.AddWithValue("@CuentaBancaria", cuentaBancaria);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@TelefonoFijo", telefonoFijo);
                cmd.Parameters.AddWithValue("@TelefonoCel", telefonoCel);
                cmd.Parameters.AddWithValue("@Email", email);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Cliente Actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("El Id del Cliente no existe");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el cliente.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarPersona(SqlConnection conn)
        {
            Console.WriteLine("Ingrese CI:");
            string ci = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese ApellidoP:");
            string apellidoP = Console.ReadLine();
            Console.WriteLine("Ingrese ApellidoM:");
            string apellidoM = Console.ReadLine();
            Console.WriteLine("Ingrese Teléfono Celular:");
            string telefonoCel = Console.ReadLine();
            Console.WriteLine("Ingrese Dirección:");
            string direccion = Console.ReadLine();
            Console.WriteLine("Ingrese Email:");
            string email = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarPersona", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", ci);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@ApellidoP", apellidoP);
                cmd.Parameters.AddWithValue("@ApellidoM", apellidoM);
                cmd.Parameters.AddWithValue("@TelefonoCel", telefonoCel);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@Email", email);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Persona Actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("El Id de la persona no existe");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar la persona.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarPersonaCliente(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();
            Console.WriteLine("Ingrese CI:");
            string ci = Console.ReadLine();
            Console.WriteLine("Fecha de Asociacion:");
            string fecha = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarPersonaCliente", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);
                cmd.Parameters.AddWithValue("@CI", ci);
                cmd.Parameters.AddWithValue("@FechaAsociacion", fecha);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("PersonaCliente actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("No existe tal registro");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar PersonaCliente.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarMascota(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Alias:");
            string alias = Console.ReadLine();
            Console.WriteLine("Ingrese Especie:");
            string especie = Console.ReadLine();
            Console.WriteLine("Ingrese Raza:");
            string raza = Console.ReadLine();
            Console.WriteLine("Ingrese Color:");
            string color = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Nacimiento (YYYY-MM-DD):");
            string fechaNacimiento = Console.ReadLine();
            Console.WriteLine("Ingrese Peso Actual:");
            string pesoActual = Console.ReadLine();
            Console.WriteLine("Es Paciente (1 para Sí, 0 para No):");
            bool esPaciente = Console.ReadLine() == "1";
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarMascota", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@Alias", alias);
                cmd.Parameters.AddWithValue("@Especie", especie);
                cmd.Parameters.AddWithValue("@Raza", raza);
                cmd.Parameters.AddWithValue("@Color", color);
                cmd.Parameters.AddWithValue("@FechaNacimiento", fechaNacimiento);
                cmd.Parameters.AddWithValue("@PesoActual", pesoActual);
                cmd.Parameters.AddWithValue("@EsPaciente", esPaciente);
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Mascota actualizada exitosamente.");
                    }
                    else if (resultado == -1)
                    {

                        Console.WriteLine("EL id de la mascota no existe.");
                    }
                    else
                    {
                        Console.WriteLine("Error al insertar la mascota.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarHistoricoPeso(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha (YYYY-MM-DD):");
            string fecha = Console.ReadLine();
            Console.WriteLine("Ingrese Peso:");
            string peso = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarHistoricoPeso", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@Fecha", fecha);
                cmd.Parameters.AddWithValue("@Peso", peso);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Histórico de Peso actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("El registro no existe");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el histórico de peso.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarHistoricoClinico(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Consulta (YYYY-MM-DD):");
            string fechaConsulta = Console.ReadLine();
            Console.WriteLine("Ingrese Síntomas:");
            string sintomas = Console.ReadLine();
            Console.WriteLine("Ingrese Diagnóstico:");
            string diagnostico = Console.ReadLine();
            Console.WriteLine("Ingrese Tratamiento:");
            string tratamiento = Console.ReadLine();
            Console.WriteLine("Ingrese Medicación:");
            string medicacion = Console.ReadLine();
            Console.WriteLine("Ingrese Monto Pagado:");
            string montoPagado = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarHistoClinica", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaConsulta", fechaConsulta);
                cmd.Parameters.AddWithValue("@Sintomas", sintomas);
                cmd.Parameters.AddWithValue("@Diagnostico", diagnostico);
                cmd.Parameters.AddWithValue("@Tratamiento", tratamiento);
                cmd.Parameters.AddWithValue("@Medicacion", medicacion);
                cmd.Parameters.AddWithValue("@MontoPagado", montoPagado);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Histórico Clínico actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el histórico clínico.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarVacuna(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdVacuna:");
            string idVacuna = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Laboratorio:");
            string lab = Console.ReadLine();
            Console.WriteLine("Ingrese enfermedad:");
            string enfermedadPrev = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarVacunas", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdVacuna", idVacuna);
                cmd.Parameters.AddWithValue("@NombreVacuna", nombre);
                cmd.Parameters.AddWithValue("@Laboratorio", lab);
                cmd.Parameters.AddWithValue("@EnfermedadPrev", enfermedadPrev);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Vacuna actualizada exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("El Id de la vacuna no existe.");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar la vacuna.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarCalendarioVacunacion(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese IdVacuna:");
            string idVacuna = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha Prevista (YYYY-MM-DD):");
            string fechaPrev = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha Aplicación (YYYY-MM-DD):");
            string fechaApli = Console.ReadLine();
            Console.WriteLine("ingrese la dosis");
            string dosis = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarCalenVacuna", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@IdVacuna", idVacuna);
                cmd.Parameters.AddWithValue("@FechaPrevista", fechaPrev);
                cmd.Parameters.AddWithValue("@FechaAplicacion", fechaApli);
                cmd.Parameters.AddWithValue("@Dosis", dosis);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Calendario de Vacunación actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el calendario de vacunación.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarHuesped(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdHuesped:");
            string idHuesped = Console.ReadLine();
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Ingreso (YYYY-MM-DD):");
            string fechaIngreso = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Salida (YYYY-MM-DD):");
            string fechaSalida = Console.ReadLine();
            Console.WriteLine("Ingrese Necesidades Especiales:");
            string necesidadesEspeciales = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarHuesped", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaIngreso", fechaIngreso);
                cmd.Parameters.AddWithValue("@FechaSalida", fechaSalida);
                cmd.Parameters.AddWithValue("@NecesidadesEspeciales", necesidadesEspeciales);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Huésped actualziado exitosamente.");
                    }
                    else if(resultado == -1)
                    {
                        Console.WriteLine("Id Huesped no encontrado");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el huésped.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarProducto(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdProducto:");
            string idProducto = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Costo Unitario:");
            string costoUnitario = Console.ReadLine();
            Console.WriteLine("Ingrese IdCategoría:");
            string idCategoria = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarProducto", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);
                cmd.Parameters.AddWithValue("@NombreProd", nombre);
                cmd.Parameters.AddWithValue("@CostoUnitario", costoUnitario);
                cmd.Parameters.AddWithValue("@IdCategoria", idCategoria);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Producto actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id Producto no encontrado");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el producto.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarCategoria(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCategoria:");
            string idCategoria = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            string nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Descripción:");
            string descripcion = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarCategoria", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCategoria", idCategoria);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Descripcion", descripcion);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Categoría actualizada exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id categoria no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar la categoría.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void ActualizarDetalle(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdHuesped:");
            string idHuesped = Console.ReadLine();
            Console.WriteLine("Ingrese IdProducto:");
            string idProducto = Console.ReadLine();
            Console.WriteLine("Ingrese la fecha:");
            string fecha = Console.ReadLine();
            Console.WriteLine("Ingrese Cantidad:");
            string cantidad = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_ActualizarDetalle", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);
                cmd.Parameters.AddWithValue("@Fecha", fecha);
                cmd.Parameters.AddWithValue("@Cantidad", cantidad);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Detalle actualizado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al actualizar el detalle.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarCliente(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarCliente", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Cliente Eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id Cliente no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el cliente.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarPersona(SqlConnection conn)
        {
            Console.WriteLine("Ingrese CI:");
            string ci = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarPersona", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", ci);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Persona eliminada exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("CI no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar la persona.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarPersonaCliente(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCliente:");
            string idCliente = Console.ReadLine();
            Console.WriteLine("Ingrese CI:");
            string ci = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarPersonaCliente", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", idCliente);
                cmd.Parameters.AddWithValue("@CI", ci);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("PersonaCliente eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar PersonaCliente.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarMascota(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarMascota", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Mascota eliminada exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id Mascota no encontrada.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar la mascota.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarHistoricoPeso(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha (YYYY-MM-DD):");
            string fecha = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarHistoricoPeso", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaVisita", fecha);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Histórico de Peso eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el histórico de peso.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarHistoricoClinico(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha de Consulta (YYYY-MM-DD):");
            string fechaConsulta = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarHistoClinica", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@FechaConsulta", fechaConsulta);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Histórico Clínico eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el histórico clínico.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarVacuna(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdVacuna:");
            string idVacuna = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarVacunas", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdVacuna", idVacuna);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Vacuna eliminada exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id vacuna no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar la vacuna.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarCalendarioVacunacion(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdMascota:");
            string idMascota = Console.ReadLine();
            Console.WriteLine("Ingrese IdVacuna:");
            string idVacuna = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarCalenVacuna", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdMascota", idMascota);
                cmd.Parameters.AddWithValue("@IdVacuna", idVacuna);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Calendario de Vacunación eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el calendario de vacunación.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarHuesped(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdHuesped:");
            string idHuesped = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarHuesped", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Huésped eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id huesped no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el huésped.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarProducto(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdProducto:");
            string idProducto = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarProducto", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Producto eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id producto no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el producto.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarCategoria(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdCategoria:");
            string idCategoria = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarCategoria", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCategoria", idCategoria);

                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Categoría eliminada exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Id Categoria no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar la categoría.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void EliminarDetalle(SqlConnection conn)
        {
            Console.WriteLine("Ingrese IdHuesped:");
            string idHuesped = Console.ReadLine();
            Console.WriteLine("Ingrese IdProducto:");
            string idProducto = Console.ReadLine();

            using (SqlCommand cmd = new SqlCommand("sp_EliminarDetalle", conn))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdHuesped", idHuesped);
                cmd.Parameters.AddWithValue("@IdProducto", idProducto);


                SqlParameter resultParam = new SqlParameter("@Resultado", System.Data.SqlDbType.Int);
                resultParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                try
                {
                    cmd.ExecuteNonQuery();
                    int resultado = (int)resultParam.Value;
                    if (resultado == 1)
                    {
                        Console.WriteLine("Detalle eliminado exitosamente.");
                    }
                    else if (resultado == -1)
                    {
                        Console.WriteLine("Registro no encontrado.");
                    }
                    else
                    {
                        Console.WriteLine("Error al eliminar el detalle.");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }
    }
}
