using System;
using System.Data;
using System.Data.SqlClient;

namespace nouPartazer.Helpers
{
    public static class DatabaseHelper
    {
        // Your actual connection string
        private static readonly string ConnectionString = "Server=DESKTOP-O8M3F3T\\MSSQLSERVER1;Database=NouPartazerDB;Trusted_Connection=True;";

        /// <summary>
        /// Executes a query and returns the result as a DataTable.
        /// </summary>
        public static DataTable ExecuteQuery(string query, SqlParameter[] parameters)
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                        cmd.Parameters.AddRange(parameters);

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable result = new DataTable();
                        adapter.Fill(result);
                        return result;
                    }
                }
            }
        }

        /// <summary>
        /// Executes a non-query SQL command (INSERT, UPDATE, DELETE) and returns the number of affected rows.
        /// </summary>
        public static int ExecuteNonQuery(string query, SqlParameter[] parameters)
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                        cmd.Parameters.AddRange(parameters);

                    conn.Open();
                    return cmd.ExecuteNonQuery(); // Returns the number of rows affected
                }
            }
        }

        /// <summary>
        /// Executes a scalar query and returns the first column of the first row in the result set.
        /// </summary>
        public static object ExecuteScalar(string query, SqlParameter[] parameters)
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                        cmd.Parameters.AddRange(parameters);

                    conn.Open();
                    return cmd.ExecuteScalar(); // Returns the first value from the result
                }
            }
        }
    }
}
