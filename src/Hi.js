/* eslint-disable react-hooks/exhaustive-deps */
import React, { useState, useEffect } from 'react'

const Hi = () => {
  const [value, setValue] = useState(0)

  useEffect(() => {
    setTimeout(() => {
      setValue(value + 1)
    }, 500)
  }, [value])

  return (
    <div>
      <h1>Hi there, here is a timer {value}</h1>
    </div>
  )
}

export default Hi