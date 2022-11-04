using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Reflection;

namespace CoachTicketManagement
{
    public class ConnectionDatabase
    {
        #region Design Singleton Pattern
        private static ConnectionDatabase instance;
        public static ConnectionDatabase Instance
        {
            get { if (instance == null) instance = new ConnectionDatabase(); return instance; }
            private set { instance = value; }
        }
        private ConnectionDatabase() { }
        #endregion

        #region ConnectionString
        public string getConnectionString() => @"Data Source=CVTHINH\SQLEXPRESS; Initial Catalog=QL_SINHVIEN; Integrated Security=True";
        public string getConnectionString(string databaseName) => @"Data Source=.\SQLEXPRESS; Initial Catalog=" + databaseName + "; Integrated Security=True";
        public string getConnectionString(string serverName, string databaseName) => @"Data Source=" + serverName + "; Initial Catalog=" + databaseName + "; Integrated Security=True";
        public string getConnectionString(string serverName, string databaseName, string id, string pass) => @"Data Source=" + serverName + ";Initial Catalog=" + databaseName + ";User ID=" + id + ";Password=" + pass;
        #endregion

        #region Make Query
        public void AddParameters(ref SqlCommand cmd, string query, object[] obj)
        {
            int lenPara = obj.Length;
            string[] parameters = new string[lenPara];
            for (int i = 0; i < lenPara; i++)
                cmd.Parameters.AddWithValue(@"@para_" + i.ToString(), obj[i]);
        }
        public List<T> ExecuteReader<T>(string serverName, string databaseName, string query, object[] obj = null) where T : class, new()
        {
            try
            {
                List<T> list = new List<T>();
                using (SqlConnection connection = new SqlConnection(getConnectionString(serverName, databaseName)))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(query, connection);
                    if (obj != null)
                        AddParameters(ref cmd, query, obj);
                    SqlDataReader reader = cmd.ExecuteReader();
                    int lenField = reader.FieldCount;
                    string[] fieldName = new string[lenField];
                    for (int i = 0; i < lenField; i++)
                        fieldName[i] = reader.GetName(i);
                    while (reader.Read())
                    {
                        T item = new T();
                        for (int i = 0; i < lenField; i++)
                        {
                            PropertyInfo propertyInfo = typeof(T).GetProperty(fieldName[i]);
                            if (propertyInfo != null)
                                propertyInfo.SetValue(item, reader.GetValue(i));
                        }
                        list.Add(item);
                    }
                }
                return list;
            }
            catch
            {
                return null;
            }
        }
        public int ExecuteNonQuery(string serverName, string databaseName, string query, object[] obj = null)
        {
            try
            {
                int rowEffect = 0;
                using (SqlConnection connection = new SqlConnection(getConnectionString(serverName, databaseName)))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(query, connection);
                    if (obj != null)
                        AddParameters(ref cmd, query, obj);
                    rowEffect = cmd.ExecuteNonQuery();
                }
                return rowEffect;
            }
            catch
            {
                return 0;
            }
        }
        public int ExecuteScalar(string serverName, string databaseName, string query, object[] obj = null)
        {
            try
            {
                int rowEffect = 0;
                using (SqlConnection connection = new SqlConnection(getConnectionString(serverName, databaseName)))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(query, connection);
                    if (obj != null)
                        AddParameters(ref cmd, query, obj);
                    rowEffect = (int)cmd.ExecuteScalar();
                }
                return rowEffect;
            }
            catch
            {
                return 0;
            }
        }


        public List<T> ExecuteReader<T>(string query, object[] obj = null) where T : class, new()
        {
            try
            {
                List<T> list = new List<T>();
                using (SqlConnection connection = new SqlConnection(getConnectionString()))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(query, connection);
                    if (obj != null)
                        AddParameters(ref cmd, query, obj);
                    SqlDataReader reader = cmd.ExecuteReader();
                    int lenField = reader.FieldCount;
                    string[] fieldName = new string[lenField];
                    for (int i = 0; i < lenField; i++)
                        fieldName[i] = reader.GetName(i);
                    while (reader.Read())
                    {
                        T item = new T();
                        for (int i = 0; i < lenField; i++)
                        {
                            PropertyInfo propertyInfo = typeof(T).GetProperty(fieldName[i]);
                            if (propertyInfo != null)
                                propertyInfo.SetValue(item, reader.GetValue(i));
                        }
                        list.Add(item);
                    }
                }
                return list;
            }
            catch
            {
                return null;
            }
        }
        public int ExecuteNonQuery(string query, object[] obj = null)
        {
            try
            {
                int rowEffect = 0;
                using (SqlConnection connection = new SqlConnection(getConnectionString()))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(query, connection);
                    if (obj != null)
                        AddParameters(ref cmd, query, obj);
                    rowEffect = cmd.ExecuteNonQuery();
                }
                return rowEffect;
            }
            catch
            {
                return 0;
            }
        }
        public int ExecuteScalar(string query, object[] obj = null)
        {
            try
            {
                int rowEffect = 0;
                using (SqlConnection connection = new SqlConnection(getConnectionString()))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(query, connection);
                    if (obj != null)
                        AddParameters(ref cmd, query, obj);
                    rowEffect = (int)cmd.ExecuteScalar();
                }
                return rowEffect;
            }
            catch
            {
                return 0;
            }
        }
        #endregion
    }
}
