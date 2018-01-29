using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using HMS.EntityLayer;
using HMS.DataLayer;

namespace HMS.BusinessLayer
{
    public class BusinessClass
    {
        DataSet dataset = new DataSet();
        DataClass dataclassObj = new DataClass();
        public DataSet SearchByID(EntityClass srcById)
        {
            SqlParameter[] srcParam =
            {
                new SqlParameter("@PatientId",SqlDbType.Int),
            };
            srcParam[0].Value = srcById.patientID;
            dataset = dataclassObj.SearchById(srcParam);
            return dataset;
        }

        public DataSet SearchByFname(PatientbyName srcName)
        {
            SqlParameter[] srcFname =
            {
                new SqlParameter("@SrcFname",SqlDbType.VarChar),
            };
            srcFname[0].Value = srcName.patientName;
            dataset = dataclassObj.dataSearchByFname(srcFname);
            return dataset;
        }
    }
}
