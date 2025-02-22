import spin from './assets/spin.svg'
import React from 'react'

export default function Spinner() {
  return (
    <div>
      <div className='d-flex justify-content-center'>
        <img src={spin} alt="Loading..." />
      </div>
    </div>
  )
}
