// 1. Shader types
// All shaders need to specify their type in the first line
// Format is: shader_type type;
// Valid types are: spatial For 3D rendering.
//					canvas_item For 2D rendering.
//					particles For particle systems.
shader_type spatial;
// 2. Render modes
// Different shader types support different render modes. They are optional and, if specified, must be after the shader_type
// Render modes are used to alter the way built-in functionality is handled.
// Each shader type has a different list of render modes available
render_mode unshaded, cull_disabled;

// 3. Processor functions
// Depending on the shader type, different processor functions may be optionally overridden.
// For "spatial" and "canvas_item", it is possible to override vertex, fragment, and light.
// For "particles", only vertex can be overridden.

// 3.1 Vertex processor
// The vertex processing function is called once for every vertex in "spatial" and "canvas_item" shaders.
// For "particles" shaders, it is called once for every particle.
void vertex()
{
// The vertex function is used to modify per-vertex information that will be passed on to the fragment function. 
// It can also be used to establish variables that will be sent to the fragment function by using varyings(see other doc).

// By default, Godot will take your vertex information and transform it accordingly to be drawn.
// If this is undesirable, you can use render modes to transform the data yourself;
// see the Spatial shader doc for an example of this.
}

// 3.2 Fragment processor
// The fragment processing function is used to set up the Godot material parameters per pixel.
// This code runs on every visible pixel the object or primitive draws. It is only available in "spatial" and "canvas_item" shaders.
void fragment()
{
// The standard use of the fragment function is to set up material properties that will be used to calculate lighting.
// For example, you would set values for ROUGHNESS, RIM, or TRANSMISSION
// which would tell the light function how the lights respond to that fragment.
// This makes it possible to control a complex shading pipeline without the user having to write much code.
// If you don't need this built-in functionality,
// you can ignore it and write your own light processing function and Godot will optimize it away.
// For example, if you do not write a value to RIM, Godot will not calculate rim lighting.
// During compilation, Godot checks to see if RIM is used; if not, it cuts all the corresponding code out.
// Therefore, you will not waste calculations on effects that you do not use.
}

// 3.3 Light processor
// The light processor runs per pixel too, but also runs for every light that affects the object
// (and does not run if no lights affect the object).
// It exists as a function called inside the fragment processor
// and typically operates on the material properties setup inside the fragment function.
void light()
{
// The light processor works differently in 2D than it does in 3D;
// for a description of how it works in each, see their documentation, CanvasItem shaders and Spatial shaders, respectively.
}