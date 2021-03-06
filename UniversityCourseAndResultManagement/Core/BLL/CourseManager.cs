﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UniversityCourseAndResultManagement.Core.Gateway;
using UniversityCourseAndResultManagement.Models;

namespace UniversityCourseAndResultManagement.Core.BLL
{
    public class CourseManager
    {

        private CourseGateway courseGateway = new CourseGateway();

        public string Save(Course course)
        {
            if (courseGateway.IsCourseExists(course))
            {
                return "Course Code or Name already exist";
            }
            else
            {
                if (courseGateway.Save(course) > 0)
                {
                    return "Saved";
                }
                else
                {
                    return "Save failed";
                }
            }

        }

        //change by sayed
        public List<Course> GetAllCoursesByDepartment(int DepartmentId)
        {
            return courseGateway.GetAllCoursesByDepartment(DepartmentId);
        }
        //change by sayed
        public List<Course> GetAllCoursebyDeptId(int departmentId)
        {
            return courseGateway.GetAllCoursebyDeptId(departmentId);
        }

        public Course GetCourseInfoById(int courseId)
        {
            return courseGateway.GetCourseInfoById(courseId);
        }

        public string AssignTeachertoCourse(int teacherId, string Name)
        {
            if (!courseGateway.IsCourseAllocated(Name))
            {
                if (courseGateway.AssignTeachertoCourse(teacherId, Name) > 0)
                {
                    return "Assign Teacher to Course successfully !!!";
                }
                else
                {
                    return "Assign Teacher to Course failure !!!";
                }
            }
            else
            {
                return "Course is Allocated so cant be assigned";
            }
        }

        public List<ViewResults> GetAllResult(string regNo)
        {
            return courseGateway.GetAllResult(regNo);
        }
    }
}