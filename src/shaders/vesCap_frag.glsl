/*========================================================================
  VES --- VTK OpenGL ES Rendering Toolkit

      http://www.kitware.com/ves

  Copyright 2011 Kitware, Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 ========================================================================*/
/// \file vesCapping_frag.glsl
///
/// \ingroup shaders

varying lowp vec4   frontfaceColor;
varying lowp vec4   backfaceColor;
varying highp float clipDistance;

void main()
{
  if(clipDistance < 0.0) {
    discard;
  }

  if(gl_FrontFacing) {
    gl_FragColor = frontfaceColor;
  }
  else {
    gl_FragColor = backfaceColor;
  }
}
