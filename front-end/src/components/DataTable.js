import React from 'react'

const DataTable = ({data}) => {
  
  return (
    <>
        <div className="overflow-x-auto h-96">
        <table className="table-auto min-w-full">
          <thead>
            <tr>
              <th className="px-4 py-2">ID</th>
              <th className="px-4 py-2">Name</th>
              <th className="px-4 py-2">Is Vaccinated</th>
              <th className="px-4 py-2">Birthdate</th>
              <th className="px-4 py-2">Gender</th>
            </tr>
          </thead>
          <tbody>
            
           {data.map((data,i)=><tr key={i}>
              <td className="border px-4 py-2 text-center">{i+1}</td>
              <td className="border px-4 py-2 text-center">{data.name}</td>
              <td className="border px-4 py-2 text-center">{JSON.stringify(data.is_vaccinated)}</td>
              <td className="border px-4 py-2 text-center">{data.birthdate}</td>
              <td className="border px-4 py-2 text-center">{data.gender}</td>
            </tr>)} 
          </tbody>
        </table>
      </div>
    </>
  )
}

export default DataTable