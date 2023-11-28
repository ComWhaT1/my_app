
import React, { useState } from 'react';

const Ttt = () => {
  const [data, setData] = useState([]);
  const [isEditing, setIsEditing] = useState(false);
  const [selectedItem, setSelectedItem] = useState(null);

  const handleEdit = (item) => {
    setSelectedItem(item);
    setIsEditing(true);
  };

  const handleSave = () => {
    // Save logic here
  };

  const handleRemove = (item) => {
    // Remove logic here
  };

  const handleModalClose = () => {
    setIsEditing(false);
    setSelectedItem(null);
  };

  return (
    <div>
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Input Assignment</th>
            <th>Output Assignment</th>
            <th>Remove</th>
          </tr>
        </thead>
        <tbody>
          {data.map((item) => (
            <tr key={item.id}>
              <td>{item.name}</td>
              <td>{item.inputAssignment}</td>
              <td>{item.outputAssignment}</td>
              <td>
                <button onClick={() => handleRemove(item)}>Remove</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      <button onClick={handleSave}>Save</button>
      <button onClick={() => handleEdit(null)}>Edit</button>

      {isEditing && (
        <div>
          <label>Name</label>
          <select>
            {/* Dropdown options */}
          </select>
          {/* Other fields */}
          <button onClick={handleModalClose}>Close</button>
        </div>
      )}
    </div>
  );
};

export default Ttt;
