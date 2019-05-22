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

// MARK: - AnyDocumentedDefaultCore

@usableFromInline
internal final class AnyDocumentedDefaultCore<Base>: AnyDocumented<Base.Title, Base.Summary, Base.Overview, Base.Explanation>.Core where Base: Documented {

	///
	@inlinable
	init(_ actualBase: Base) {
		self.actualBase = actualBase
	}

	@inlinable
	deinit { }

	///
	@usableFromInline
	var actualBase: Base

	@inlinable
	override var base: Any {
		return self.actualBase
	}

	@inlinable
	override var title: Base.Title { return self.actualBase.title }

	@inlinable
	override var summary: Base.Summary { return self.actualBase.summary }

	@inlinable
	override var overview: Base.Overview { return self.actualBase.overview }

	@inlinable
	override var explanation: Base.Explanation { return self.actualBase.explanation }

	@inlinable
	override func mutating() -> AnyDocumented<Base.Title, Base.Summary, Base.Overview, Base.Explanation>.Core { return AnyDocumentedDefaultCore(self.actualBase) }
}