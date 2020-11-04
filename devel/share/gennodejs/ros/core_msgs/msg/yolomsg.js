// Auto-generated. Do not edit!

// (in-package core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class yolomsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.className = null;
      this.x1 = null;
      this.y1 = null;
      this.x2 = null;
      this.y2 = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('className')) {
        this.className = initObj.className
      }
      else {
        this.className = [];
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = [];
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = [];
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = [];
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type yolomsg
    // Serialize message field [num]
    bufferOffset = _serializer.int64(obj.num, buffer, bufferOffset);
    // Serialize message field [className]
    bufferOffset = _arraySerializer.string(obj.className, buffer, bufferOffset, null);
    // Serialize message field [x1]
    bufferOffset = _arraySerializer.float64(obj.x1, buffer, bufferOffset, null);
    // Serialize message field [y1]
    bufferOffset = _arraySerializer.float64(obj.y1, buffer, bufferOffset, null);
    // Serialize message field [x2]
    bufferOffset = _arraySerializer.float64(obj.x2, buffer, bufferOffset, null);
    // Serialize message field [y2]
    bufferOffset = _arraySerializer.float64(obj.y2, buffer, bufferOffset, null);
    // Serialize message field [score]
    bufferOffset = _arraySerializer.float64(obj.score, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type yolomsg
    let len;
    let data = new yolomsg(null);
    // Deserialize message field [num]
    data.num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [className]
    data.className = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [x1]
    data.x1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y1]
    data.y1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [x2]
    data.x2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y2]
    data.y2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [score]
    data.score = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.className.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.x1.length;
    length += 8 * object.y1.length;
    length += 8 * object.x2.length;
    length += 8 * object.y2.length;
    length += 8 * object.score.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core_msgs/yolomsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1607a196c1d846520e717e25497400be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num
    string[] className
    float64[] x1
    float64[] y1
    float64[] x2
    float64[] y2
    float64[] score 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new yolomsg(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.className !== undefined) {
      resolved.className = msg.className;
    }
    else {
      resolved.className = []
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = []
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = []
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = []
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = []
    }

    return resolved;
    }
};

module.exports = yolomsg;
