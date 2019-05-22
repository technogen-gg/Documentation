//
// This is free and unencumbered software released into the public domain.
//
// Anyone is free to copy, modify, publish, use, compile, sell, or
// distribute this software, either in source code form or as a compiled
// binary, for any purpose, commercial or non-commercial, and by any
// means.
//
// In jurisdictions that recognize copyright laws, the author or authors
// of this software dedicate any and all copyright interest in the
// software to the public domain. We make this dedication for the benefit
// of the public at large and to the detriment of our heirs and
// successors. We intend this dedication to be an overt act of
// relinquishment in perpetuity of all present and future rights to this
// software under copyright law.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
// OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
//
// For more information, please refer to <http://unlicense.org/>
//  

// MARK: - Documented (Defaults)

public extension Documented where Title == Void {

	@inlinable
	var title: Title { return () }
}

public extension Documented where Summary == Void {

	@inlinable
	var summary: Summary { return () }
}

public extension Documented where Overview == Void {

	@inlinable
	var overview: Overview { return () }
}

public extension Documented where Explanation == Void {

	@inlinable
	var explanation: Explanation { return () }
}

public extension Documented {

	@inlinable
	var description: String {
		let fields = [
			self.title is Void ? nil : "title: \(String(reflecting: self.title))",
			self.summary is Void ? nil : "summary: \(String(reflecting: self.summary))",
			self.overview is Void ? nil : "overview: \(String(reflecting: self.overview))",
			self.explanation is Void ? nil : "explanation: \(String(reflecting: self.explanation))"
		].compactMap { $0 }.joined(separator: ", ")
		return "(\(fields))"
	}
}