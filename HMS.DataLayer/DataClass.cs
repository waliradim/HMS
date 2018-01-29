using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace HMS.DataLayer
{
    public class DataClass
    {
        
         static public string Connection()
        {
            string conn = ConfigurationManager.AppSettings["ConnectionString"].ToString(); 
            return conn;

        }

        SqlConnection conobj = new SqlConnection(Connection());
        DataSet dataset = new DataSet();
        SqlCommand cmd = null;
        SqlDataAdapter dataAdapter = null;


        public DataSet SearchById(SqlParameter[] sqlParam)
        {
            string query = "SpViewPHbyID";
            cmd = new SqlCommand(query, conobj);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(sqlParam);
            dataAdapter = new SqlDataAdapter(cmd);
            conobj.Open();
            dataAdapter.Fill(dataset);
            conobj.Close();
            return dataset;
        }


        public DataSet dataSearchByFname(SqlParameter[] sqlFnamePara)
        {
            string query = "SP_SrcFname";
            cmd = new SqlCommand(query, conobj);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(sqlFnamePara);
            dataAdapter = new SqlDataAdapter(cmd);
            conobj.Open();
            dataAdapter.Fill(dataset);
            conobj.Close();
            return dataset;
        }
    }
}
