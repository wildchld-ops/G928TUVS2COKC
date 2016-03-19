.class Lcom/myscript/atk/styluscore/styluscoreJNI;
.super Ljava/lang/Object;
.source "styluscoreJNI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native ArcPrimitive_SWIGUpcast(J)J
.end method

.method public static final native ArcPrimitive_center(JLcom/myscript/atk/styluscore/ArcPrimitive;)J
.end method

.method public static final native ArcPrimitive_firstHasArrowHead(JLcom/myscript/atk/styluscore/ArcPrimitive;)Z
.end method

.method public static final native ArcPrimitive_lastHasArrowHead(JLcom/myscript/atk/styluscore/ArcPrimitive;)Z
.end method

.method public static final native ArcPrimitive_maxRadius(JLcom/myscript/atk/styluscore/ArcPrimitive;)F
.end method

.method public static final native ArcPrimitive_minRadius(JLcom/myscript/atk/styluscore/ArcPrimitive;)F
.end method

.method public static final native ArcPrimitive_orientation(JLcom/myscript/atk/styluscore/ArcPrimitive;)F
.end method

.method public static final native ArcPrimitive_path__SWIG_0(JLcom/myscript/atk/styluscore/ArcPrimitive;I)J
.end method

.method public static final native ArcPrimitive_path__SWIG_1(JLcom/myscript/atk/styluscore/ArcPrimitive;)J
.end method

.method public static final native ArcPrimitive_startAngle(JLcom/myscript/atk/styluscore/ArcPrimitive;)F
.end method

.method public static final native ArcPrimitive_sweepAngle(JLcom/myscript/atk/styluscore/ArcPrimitive;)F
.end method

.method public static final native Archive_getByteCount(JLcom/myscript/atk/styluscore/Archive;)I
.end method

.method public static final native Archive_getBytes(JLcom/myscript/atk/styluscore/Archive;)[B
.end method

.method public static final native Archive_getMaxSupportedVersion()J
.end method

.method public static final native Archive_getVersion(JLcom/myscript/atk/styluscore/Archive;)J
.end method

.method public static final native Archive_nativeEquals(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/Archive;)Z
.end method

.method public static final native Archive_readInkField(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J
.end method

.method public static final native Archive_readInkItem(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J
.end method

.method public static final native Archive_readInt(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)I
.end method

.method public static final native Archive_readSegment(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J
.end method

.method public static final native Archive_setVersion(JLcom/myscript/atk/styluscore/Archive;J)V
.end method

.method public static final native Archive_writeInkField(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkField;)V
.end method

.method public static final native Archive_writeInkItem(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItem;)V
.end method

.method public static final native Archive_writeInt(JLcom/myscript/atk/styluscore/Archive;I)V
.end method

.method public static final native Archive_writeSegment(JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/Segment;)V
.end method

.method public static final native Brush_configure__SWIG_0(JLcom/myscript/atk/styluscore/Brush;Ljava/lang/String;)V
.end method

.method public static final native Brush_configure__SWIG_1(JLcom/myscript/atk/styluscore/Brush;I)V
.end method

.method public static final native Brush_getBrushDescription(JLcom/myscript/atk/styluscore/Brush;)[B
.end method

.method public static final native Brush_getBrushType(JLcom/myscript/atk/styluscore/Brush;)I
.end method

.method public static final native Brush_getSaturationMultiplier(JLcom/myscript/atk/styluscore/Brush;)F
.end method

.method public static final native Brush_getSerializedBrush(JLcom/myscript/atk/styluscore/Brush;)J
.end method

.method public static final native Brush_getStyle(JLcom/myscript/atk/styluscore/Brush;)I
.end method

.method public static final native Brush_getTextureName(JLcom/myscript/atk/styluscore/Brush;)Ljava/lang/String;
.end method

.method public static final native Brush_getTextureSize(JLcom/myscript/atk/styluscore/Brush;)I
.end method

.method public static final native Brush_getWidthMultiplier(JLcom/myscript/atk/styluscore/Brush;)F
.end method

.method public static final native Brush_getZoomMultiplier(JLcom/myscript/atk/styluscore/Brush;)F
.end method

.method public static final native Brush_setBrushType(JLcom/myscript/atk/styluscore/Brush;I)V
.end method

.method public static final native Brush_setSaturationMultiplier(JLcom/myscript/atk/styluscore/Brush;F)V
.end method

.method public static final native Brush_setSerializedBrush(JLcom/myscript/atk/styluscore/Brush;J)V
.end method

.method public static final native Brush_setStyle(JLcom/myscript/atk/styluscore/Brush;I)V
.end method

.method public static final native Brush_setTextureName(JLcom/myscript/atk/styluscore/Brush;[B)V
.end method

.method public static final native Brush_setTextureSize(JLcom/myscript/atk/styluscore/Brush;I)V
.end method

.method public static final native Brush_setWidthMultiplier(JLcom/myscript/atk/styluscore/Brush;F)V
.end method

.method public static final native Brush_setZoomMultiplier(JLcom/myscript/atk/styluscore/Brush;F)V
.end method

.method public static final native Brushes_addBrush(JLcom/myscript/atk/styluscore/Brushes;JLcom/myscript/atk/styluscore/Brush;)V
.end method

.method public static final native Brushes_getBrushes(JLcom/myscript/atk/styluscore/Brushes;)J
.end method

.method public static final native CalcInputMethod_SWIGUpcast(J)J
.end method

.method public static final native CalcInputMethod_solve(JLcom/myscript/atk/styluscore/CalcInputMethod;JLcom/myscript/atk/styluscore/InkField;ILjava/lang/Object;IJLcom/myscript/atk/styluscore/Char;I)J
.end method

.method public static final native Candidate_append(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Segment;)V
.end method

.method public static final native Candidate_flags(JLcom/myscript/atk/styluscore/Candidate;)I
.end method

.method public static final native Candidate_grafted(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;I)J
.end method

.method public static final native Candidate_hashCode(JLcom/myscript/atk/styluscore/Candidate;)I
.end method

.method public static final native Candidate_isBidiMarker(JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_isEmpty(JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_isLineBreak(JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_isSpace(JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_isTab(JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_isWhitespace(JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_label(JLcom/myscript/atk/styluscore/Candidate;)[B
.end method

.method public static final native Candidate_mapped(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native Candidate_mirrored(JLcom/myscript/atk/styluscore/Candidate;)J
.end method

.method public static final native Candidate_nativeEquals(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_normalizedRecognitionScore(JLcom/myscript/atk/styluscore/Candidate;)F
.end method

.method public static final native Candidate_normalized__SWIG_0(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListInt;Z)J
.end method

.method public static final native Candidate_normalized__SWIG_1(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native Candidate_notEquals(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_resemblanceScore(JLcom/myscript/atk/styluscore/Candidate;)F
.end method

.method public static final native Candidate_seamlesslyGraftsTo(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;)Z
.end method

.method public static final native Candidate_segments(JLcom/myscript/atk/styluscore/Candidate;)J
.end method

.method public static final native Candidate_setFlags(JLcom/myscript/atk/styluscore/Candidate;I)V
.end method

.method public static final native Candidate_setLabel(JLcom/myscript/atk/styluscore/Candidate;[B)V
.end method

.method public static final native Candidate_setNormalizedRecognitionScore(JLcom/myscript/atk/styluscore/Candidate;F)V
.end method

.method public static final native Candidate_setResemblanceScore(JLcom/myscript/atk/styluscore/Candidate;F)V
.end method

.method public static final native Candidate_setSegments(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/ListSegment;)V
.end method

.method public static final native Candidate_setType(JLcom/myscript/atk/styluscore/Candidate;I)V
.end method

.method public static final native Candidate_simplified(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native Candidate_split(JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Candidate;JLcom/myscript/atk/styluscore/Candidate;Z)V
.end method

.method public static final native Candidate_timeShifted(JLcom/myscript/atk/styluscore/Candidate;J)J
.end method

.method public static final native Candidate_type(JLcom/myscript/atk/styluscore/Candidate;)I
.end method

.method public static final native Char_ALM_get()J
.end method

.method public static final native Char_ALM_unicode_get()I
.end method

.method public static final native Char_FSI_get()J
.end method

.method public static final native Char_FSI_unicode_get()I
.end method

.method public static final native Char_LRE_get()J
.end method

.method public static final native Char_LRE_unicode_get()I
.end method

.method public static final native Char_LRI_get()J
.end method

.method public static final native Char_LRI_unicode_get()I
.end method

.method public static final native Char_LRM_get()J
.end method

.method public static final native Char_LRM_unicode_get()I
.end method

.method public static final native Char_LRO_get()J
.end method

.method public static final native Char_LRO_unicode_get()I
.end method

.method public static final native Char_PDF_get()J
.end method

.method public static final native Char_PDF_unicode_get()I
.end method

.method public static final native Char_PDI_get()J
.end method

.method public static final native Char_PDI_unicode_get()I
.end method

.method public static final native Char_PI_get()J
.end method

.method public static final native Char_PI_unicode_get()I
.end method

.method public static final native Char_RLE_get()J
.end method

.method public static final native Char_RLE_unicode_get()I
.end method

.method public static final native Char_RLI_get()J
.end method

.method public static final native Char_RLI_unicode_get()I
.end method

.method public static final native Char_RLM_get()J
.end method

.method public static final native Char_RLM_unicode_get()I
.end method

.method public static final native Char_RLO_get()J
.end method

.method public static final native Char_RLO_unicode_get()I
.end method

.method public static final native Char_absoluteSign_unicode_get()I
.end method

.method public static final native Char_absoluteValue_get()J
.end method

.method public static final native Char_almostEqualTo_get()J
.end method

.method public static final native Char_almostEqualTo_unicode_get()I
.end method

.method public static final native Char_asymptoticallyEqualTo_get()J
.end method

.method public static final native Char_asymptoticallyEqualTo_unicode_get()I
.end method

.method public static final native Char_byteCount(JLcom/myscript/atk/styluscore/Char;)I
.end method

.method public static final native Char_dblIntegralSign_get()J
.end method

.method public static final native Char_dblIntegralSign_unicode_get()I
.end method

.method public static final native Char_dblSurfIntegralSign_get()J
.end method

.method public static final native Char_dblSurfIntegralSign_unicode_get()I
.end method

.method public static final native Char_degreeSign_get()J
.end method

.method public static final native Char_degreeSign_unicode_get()I
.end method

.method public static final native Char_divisionSign_get()J
.end method

.method public static final native Char_divisionSign_unicode_get()I
.end method

.method public static final native Char_divisionSlash_get()J
.end method

.method public static final native Char_divisionSlash_unicode_get()I
.end method

.method public static final native Char_fractionSlash_get()J
.end method

.method public static final native Char_fractionSlash_unicode_get()I
.end method

.method public static final native Char_fromUnicode(J)J
.end method

.method public static final native Char_greaterThanOrEqualTo_get()J
.end method

.method public static final native Char_greaterThanOrEqualTo_unicode_get()I
.end method

.method public static final native Char_hanFirst_get()J
.end method

.method public static final native Char_hanOne_unicode_get()I
.end method

.method public static final native Char_has(JLcom/myscript/atk/styluscore/Char;I)Z
.end method

.method public static final native Char_hasAllForms(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_hasOnlyOneForm(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_horizontalEllipsis_get()J
.end method

.method public static final native Char_horizontalEllipsis_unicode_get()I
.end method

.method public static final native Char_identicalTo_get()J
.end method

.method public static final native Char_identicalTo_unicode_get()I
.end method

.method public static final native Char_integralSign_get()J
.end method

.method public static final native Char_integralSign_unicode_get()I
.end method

.method public static final native Char_is(JLcom/myscript/atk/styluscore/Char;I)Z
.end method

.method public static final native Char_isArabicDigit(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isArabicLetter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isArabicPunctuation(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isCJCharacter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isCJKFullSizeCharacter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isCJKPunctuation(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isChineseCharacter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isCircledCharacter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isClosingBracketSymbol(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isCyrillicLetter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isDigit(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isEnglishCharacter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isGreekLetter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isHebrewLetter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isLatinLetter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isLatinPunctuation(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isMirroredSymbol(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isNull(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isOpeningBracketSymbol(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isPairedBracketSymbol(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isRightToLeftCharacter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isSpacing(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isStretchableHalfSizePunctuation(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isStretchableHalfSizeSymbol(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isThaiDigit(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isThaiLetter(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isThaiPunctuation(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_isUnsortedSymbol(JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_leftRightDoubleArrow_get()J
.end method

.method public static final native Char_leftRightDoubleArrow_unicode_get()I
.end method

.method public static final native Char_leftwardsDoubleArrow_get()J
.end method

.method public static final native Char_leftwardsDoubleArrow_unicode_get()I
.end method

.method public static final native Char_lessThanOrEqualTo_get()J
.end method

.method public static final native Char_lessThanOrEqualTo_unicode_get()I
.end method

.method public static final native Char_muchGreaterThan_get()J
.end method

.method public static final native Char_muchGreaterThan_unicode_get()I
.end method

.method public static final native Char_muchLessThan_get()J
.end method

.method public static final native Char_muchLessThan_unicode_get()I
.end method

.method public static final native Char_multiplicationSign_get()J
.end method

.method public static final native Char_multiplicationSign_unicode_get()I
.end method

.method public static final native Char_nativeEquals__SWIG_0(JLcom/myscript/atk/styluscore/Char;JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_nativeEquals__SWIG_1(JLcom/myscript/atk/styluscore/Char;C)Z
.end method

.method public static final native Char_notEqualTo_get()J
.end method

.method public static final native Char_notEqualTo_unicode_get()I
.end method

.method public static final native Char_notEquals__SWIG_0(JLcom/myscript/atk/styluscore/Char;JLcom/myscript/atk/styluscore/Char;)Z
.end method

.method public static final native Char_notEquals__SWIG_1(JLcom/myscript/atk/styluscore/Char;C)Z
.end method

.method public static final native Char_notIdenticalTo_get()J
.end method

.method public static final native Char_notIdenticalTo_unicode_get()I
.end method

.method public static final native Char_parallelTo_get()J
.end method

.method public static final native Char_parallelTo_unicode_get()I
.end method

.method public static final native Char_phi_get()J
.end method

.method public static final native Char_phi_unicode_get()I
.end method

.method public static final native Char_pi_get()J
.end method

.method public static final native Char_pi_unicode_get()I
.end method

.method public static final native Char_prefers(JLcom/myscript/atk/styluscore/Char;IZ)Z
.end method

.method public static final native Char_replacementChar_get()J
.end method

.method public static final native Char_replacementChar_unicode_get()I
.end method

.method public static final native Char_rightwardsDoubleArrow_get()J
.end method

.method public static final native Char_rightwardsDoubleArrow_unicode_get()I
.end method

.method public static final native Char_squareRoot_get()J
.end method

.method public static final native Char_squareRoot_unicode_get()I
.end method

.method public static final native Char_surfIntegralSign_get()J
.end method

.method public static final native Char_surfIntegralSign_unicode_get()I
.end method

.method public static final native Char_toAlternateSized(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native Char_toLower(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native Char_toMirrored(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native Char_toUpper(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native Char_tplIntegralSign_get()J
.end method

.method public static final native Char_tplIntegralSign_unicode_get()I
.end method

.method public static final native Char_tplSurfIntegralSign_get()J
.end method

.method public static final native Char_tplSurfIntegralSign_unicode_get()I
.end method

.method public static final native Char_unicode(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native Char_varphi_get()J
.end method

.method public static final native Char_varphi_unicode_get()I
.end method

.method public static final native Char_vectorSign_get()J
.end method

.method public static final native Char_vectorSign_unicode_get()I
.end method

.method public static final native Color_Black_get()J
.end method

.method public static final native Color_Blue_get()J
.end method

.method public static final native Color_Green_get()J
.end method

.method public static final native Color_Orange_get()J
.end method

.method public static final native Color_Pink_get()J
.end method

.method public static final native Color_Purple_get()J
.end method

.method public static final native Color_Red_get()J
.end method

.method public static final native Color_TransparentBlack_get()J
.end method

.method public static final native Color_White_get()J
.end method

.method public static final native Color_Yellow_get()J
.end method

.method public static final native Color_alpha(JLcom/myscript/atk/styluscore/Color;)F
.end method

.method public static final native Color_alphaComponent(JLcom/myscript/atk/styluscore/Color;)J
.end method

.method public static final native Color_blue(JLcom/myscript/atk/styluscore/Color;)F
.end method

.method public static final native Color_blueComponent(JLcom/myscript/atk/styluscore/Color;)J
.end method

.method public static final native Color_green(JLcom/myscript/atk/styluscore/Color;)F
.end method

.method public static final native Color_greenComponent(JLcom/myscript/atk/styluscore/Color;)J
.end method

.method public static final native Color_nativeEquals(JLcom/myscript/atk/styluscore/Color;JLcom/myscript/atk/styluscore/Color;)Z
.end method

.method public static final native Color_packed(JLcom/myscript/atk/styluscore/Color;)J
.end method

.method public static final native Color_red(JLcom/myscript/atk/styluscore/Color;)F
.end method

.method public static final native Color_redComponent(JLcom/myscript/atk/styluscore/Color;)J
.end method

.method public static final native ComponentListener_configured(JLcom/myscript/atk/styluscore/ComponentListener;JLcom/myscript/atk/styluscore/Component;I)V
.end method

.method public static final native ComponentListener_update(JLcom/myscript/atk/styluscore/ComponentListener;JLcom/myscript/atk/styluscore/Component;)V
.end method

.method public static final native ComponentRendererDelegate_SWIGUpcast(J)J
.end method

.method public static final native Component_errorCode(JLcom/myscript/atk/styluscore/Component;)I
.end method

.method public static final native Component_errorCodeToString(I)[B
.end method

.method public static final native Component_errorString(JLcom/myscript/atk/styluscore/Component;)[B
.end method

.method public static final native Component_failed(JLcom/myscript/atk/styluscore/Component;)Z
.end method

.method public static final native Component_getComponentListener(JLcom/myscript/atk/styluscore/Component;)J
.end method

.method public static final native Component_getRendererDelegate(JLcom/myscript/atk/styluscore/Component;)J
.end method

.method public static final native Component_penAbort(JLcom/myscript/atk/styluscore/Component;)V
.end method

.method public static final native Component_penDown(JLcom/myscript/atk/styluscore/Component;FF)V
.end method

.method public static final native Component_penMove(JLcom/myscript/atk/styluscore/Component;FF)V
.end method

.method public static final native Component_penUp(JLcom/myscript/atk/styluscore/Component;FF)V
.end method

.method public static final native Component_setComponentListener(JLcom/myscript/atk/styluscore/Component;JLcom/myscript/atk/styluscore/ComponentListener;)V
.end method

.method public static final native Component_setRendererDelegate(JLcom/myscript/atk/styluscore/Component;JLcom/myscript/atk/styluscore/IRendererDelegate;)V
.end method

.method public static final native ConstraintInfo_mApplied_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z
.end method

.method public static final native ConstraintInfo_mApplied_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V
.end method

.method public static final native ConstraintInfo_mExplicit_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z
.end method

.method public static final native ConstraintInfo_mExplicit_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V
.end method

.method public static final native ConstraintInfo_mID_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)I
.end method

.method public static final native ConstraintInfo_mID_set(JLcom/myscript/atk/styluscore/ConstraintInfo;I)V
.end method

.method public static final native ConstraintInfo_mNew_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z
.end method

.method public static final native ConstraintInfo_mNew_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V
.end method

.method public static final native ConstraintInfo_mPartial_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z
.end method

.method public static final native ConstraintInfo_mPartial_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V
.end method

.method public static final native ConstraintInfo_mTimestamp_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)J
.end method

.method public static final native ConstraintInfo_mTimestamp_set(JLcom/myscript/atk/styluscore/ConstraintInfo;JLcom/myscript/atk/styluscore/VoTimeStamp;)V
.end method

.method public static final native ConstraintInfo_mType_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)I
.end method

.method public static final native ConstraintInfo_mType_set(JLcom/myscript/atk/styluscore/ConstraintInfo;I)V
.end method

.method public static final native CursiveInputMethod_SWIGUpcast(J)J
.end method

.method public static final native DMSToolkit_createDocumentWithPath(JLcom/myscript/atk/styluscore/DMSToolkit;[B)J
.end method

.method public static final native DMSToolkit_deleteDocumentAtPath(JLcom/myscript/atk/styluscore/DMSToolkit;[B)Z
.end method

.method public static final native DMSToolkit_getFilePaths(JLcom/myscript/atk/styluscore/DMSToolkit;)J
.end method

.method public static final native DMSToolkit_getOriginDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;)[B
.end method

.method public static final native DMSToolkit_getTempDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;)[B
.end method

.method public static final native DMSToolkit_moveDocumentToPath(JLcom/myscript/atk/styluscore/DMSToolkit;JLcom/myscript/atk/styluscore/Document;[B)Z
.end method

.method public static final native DMSToolkit_moveFileFromPathToPath(JLcom/myscript/atk/styluscore/DMSToolkit;[B[B)Z
.end method

.method public static final native DMSToolkit_saveDocument(JLcom/myscript/atk/styluscore/DMSToolkit;JLcom/myscript/atk/styluscore/Document;Z)Z
.end method

.method public static final native DMSToolkit_saveDocumentAs(JLcom/myscript/atk/styluscore/DMSToolkit;JLcom/myscript/atk/styluscore/Document;[BZ)Z
.end method

.method public static final native DMSToolkit_setOriginDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;[B)V
.end method

.method public static final native DMSToolkit_setTempDirectory(JLcom/myscript/atk/styluscore/DMSToolkit;[B)Z
.end method

.method public static final native DocumentListener_documentPageNumberChanged(JLcom/myscript/atk/styluscore/DocumentListener;IZ)V
.end method

.method public static final native DocumentListener_documentPathChanged(JLcom/myscript/atk/styluscore/DocumentListener;[BZ)V
.end method

.method public static final native DocumentListener_documentSavedAsWithSuccess(JLcom/myscript/atk/styluscore/DocumentListener;[BZ)V
.end method

.method public static final native DocumentListener_documentSavedToTempWithSuccess(JLcom/myscript/atk/styluscore/DocumentListener;Z)V
.end method

.method public static final native DocumentListener_documentSavedWithSuccess(JLcom/myscript/atk/styluscore/DocumentListener;Z)V
.end method

.method public static final native Document_DefaultHeight_get()F
.end method

.method public static final native Document_DefaultHeight_set(F)V
.end method

.method public static final native Document_DefaultWidth_get()F
.end method

.method public static final native Document_DefaultWidth_set(F)V
.end method

.method public static final native Document_addListener(JLcom/myscript/atk/styluscore/Document;JLcom/myscript/atk/styluscore/DocumentListener;)V
.end method

.method public static final native Document_addPage(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_addPageAt(JLcom/myscript/atk/styluscore/Document;I)Z
.end method

.method public static final native Document_closeDocument(JLcom/myscript/atk/styluscore/Document;)V
.end method

.method public static final native Document_creationDate(JLcom/myscript/atk/styluscore/Document;)D
.end method

.method public static final native Document_filePath(JLcom/myscript/atk/styluscore/Document;)[B
.end method

.method public static final native Document_flushProxy()V
.end method

.method public static final native Document_height(JLcom/myscript/atk/styluscore/Document;)F
.end method

.method public static final native Document_isModified(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_modificationDate(JLcom/myscript/atk/styluscore/Document;)D
.end method

.method public static final native Document_move(JLcom/myscript/atk/styluscore/Document;[B)Z
.end method

.method public static final native Document_numberOfPages(JLcom/myscript/atk/styluscore/Document;)I
.end method

.method public static final native Document_page(JLcom/myscript/atk/styluscore/Document;I)J
.end method

.method public static final native Document_readDate(JLcom/myscript/atk/styluscore/Document;)D
.end method

.method public static final native Document_remove(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_removeFirstPage(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_removeLastPage(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_removeListener(JLcom/myscript/atk/styluscore/Document;JLcom/myscript/atk/styluscore/DocumentListener;)V
.end method

.method public static final native Document_removePageAt(JLcom/myscript/atk/styluscore/Document;I)Z
.end method

.method public static final native Document_saveAs__SWIG_0(JLcom/myscript/atk/styluscore/Document;[BZ)Z
.end method

.method public static final native Document_saveAs__SWIG_1(JLcom/myscript/atk/styluscore/Document;[B)Z
.end method

.method public static final native Document_saveToTemp__SWIG_0(JLcom/myscript/atk/styluscore/Document;Z)Z
.end method

.method public static final native Document_saveToTemp__SWIG_1(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_save__SWIG_0(JLcom/myscript/atk/styluscore/Document;Z)Z
.end method

.method public static final native Document_save__SWIG_1(JLcom/myscript/atk/styluscore/Document;)Z
.end method

.method public static final native Document_setCreationDate(JLcom/myscript/atk/styluscore/Document;D)Z
.end method

.method public static final native Document_setHeight(JLcom/myscript/atk/styluscore/Document;F)V
.end method

.method public static final native Document_setModificationDate(JLcom/myscript/atk/styluscore/Document;D)Z
.end method

.method public static final native Document_setReadDate(JLcom/myscript/atk/styluscore/Document;D)Z
.end method

.method public static final native Document_setWidth(JLcom/myscript/atk/styluscore/Document;F)V
.end method

.method public static final native Document_width(JLcom/myscript/atk/styluscore/Document;)F
.end method

.method public static final native Formatter_fontifyCalculationField(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/ListRect;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native Formatter_fontifyRange(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListRect;JLcom/myscript/atk/styluscore/ListFloat;JLcom/myscript/atk/styluscore/ListFloat;)J
.end method

.method public static final native Formatter_fontifyRangeOnOneLine(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListRect;FF)J
.end method

.method public static final native Formatter_formatCalcOutput__SWIG_0(JLcom/myscript/atk/styluscore/InkField;I)[B
.end method

.method public static final native Formatter_formatCalcOutput__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)[B
.end method

.method public static final native GeometryComponentListener_SWIGUpcast(J)J
.end method

.method public static final native GeometryComponentListener_deselected(JLcom/myscript/atk/styluscore/GeometryComponentListener;JLcom/myscript/atk/styluscore/GeometryComponent;JI)V
.end method

.method public static final native GeometryComponentListener_selected(JLcom/myscript/atk/styluscore/GeometryComponentListener;JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Point;JI)V
.end method

.method public static final native GeometryComponent_SWIGUpcast(J)J
.end method

.method public static final native GeometryComponent_addBrush(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Brush;)V
.end method

.method public static final native GeometryComponent_booleanValue(JLcom/myscript/atk/styluscore/GeometryComponent;I)Z
.end method

.method public static final native GeometryComponent_brushValue(JLcom/myscript/atk/styluscore/GeometryComponent;I)J
.end method

.method public static final native GeometryComponent_canRedo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z
.end method

.method public static final native GeometryComponent_canUndo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z
.end method

.method public static final native GeometryComponent_clearPage(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_clearUndoRedo(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_closePage(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_constraintColorList(JLcom/myscript/atk/styluscore/GeometryComponent;)J
.end method

.method public static final native GeometryComponent_currentState(JLcom/myscript/atk/styluscore/GeometryComponent;)J
.end method

.method public static final native GeometryComponent_deselect(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_disableExplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_disableExplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_disableImplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_disableImplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_drawFrame(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_enableExplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_enableExplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_enableImplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_enableImplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_explicitDetected(JLcom/myscript/atk/styluscore/GeometryComponent;)I
.end method

.method public static final native GeometryComponent_explicitDisplayed(JLcom/myscript/atk/styluscore/GeometryComponent;)I
.end method

.method public static final native GeometryComponent_floatValue(JLcom/myscript/atk/styluscore/GeometryComponent;I)F
.end method

.method public static final native GeometryComponent_getBrushes(JLcom/myscript/atk/styluscore/GeometryComponent;)J
.end method

.method public static final native GeometryComponent_getCurrentTool(JLcom/myscript/atk/styluscore/GeometryComponent;)I
.end method

.method public static final native GeometryComponent_getItemInfo(JLcom/myscript/atk/styluscore/GeometryComponent;J)J
.end method

.method public static final native GeometryComponent_getItemLength(JLcom/myscript/atk/styluscore/GeometryComponent;J)J
.end method

.method public static final native GeometryComponent_getMMToPointValue(JLcom/myscript/atk/styluscore/GeometryComponent;)F
.end method

.method public static final native GeometryComponent_getRectForInfoDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;JFF)J
.end method

.method public static final native GeometryComponent_getVisibleRectHeight(JLcom/myscript/atk/styluscore/GeometryComponent;)F
.end method

.method public static final native GeometryComponent_getVisibleRectWidth(JLcom/myscript/atk/styluscore/GeometryComponent;)F
.end method

.method public static final native GeometryComponent_getVisibleRectX(JLcom/myscript/atk/styluscore/GeometryComponent;)F
.end method

.method public static final native GeometryComponent_getVisibleRectY(JLcom/myscript/atk/styluscore/GeometryComponent;)F
.end method

.method public static final native GeometryComponent_implicitDetected(JLcom/myscript/atk/styluscore/GeometryComponent;)I
.end method

.method public static final native GeometryComponent_implicitDisplayed(JLcom/myscript/atk/styluscore/GeometryComponent;)I
.end method

.method public static final native GeometryComponent_initialize(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_isBusy(JLcom/myscript/atk/styluscore/GeometryComponent;)Z
.end method

.method public static final native GeometryComponent_isSelected(JLcom/myscript/atk/styluscore/GeometryComponent;J)Z
.end method

.method public static final native GeometryComponent_penUp(JLcom/myscript/atk/styluscore/GeometryComponent;FF)V
.end method

.method public static native GeometryComponent_penUpWithUserParams(JLcom/myscript/atk/styluscore/GeometryComponent;FFIJLcom/myscript/atk/styluscore/GeometryUserParamsListener;)V
.end method

.method public static final native GeometryComponent_redo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z
.end method

.method public static final native GeometryComponent_saveCardToTemp(JLcom/myscript/atk/styluscore/GeometryComponent;)Z
.end method

.method public static final native GeometryComponent_saveStrokeAsITF(JLcom/myscript/atk/styluscore/GeometryComponent;[B)V
.end method

.method public static final native GeometryComponent_select(JLcom/myscript/atk/styluscore/GeometryComponent;J)Z
.end method

.method public static final native GeometryComponent_selectAll(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_setBackgroundColor(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native GeometryComponent_setBackgroundImage(JLcom/myscript/atk/styluscore/GeometryComponent;IIJ)V
.end method

.method public static final native GeometryComponent_setBestFit(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_setBooleanValue(JLcom/myscript/atk/styluscore/GeometryComponent;IZ)V
.end method

.method public static final native GeometryComponent_setBrushColor(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native GeometryComponent_setBrushDashed(JLcom/myscript/atk/styluscore/GeometryComponent;Z)V
.end method

.method public static final native GeometryComponent_setBrushValue(JLcom/myscript/atk/styluscore/GeometryComponent;IJLcom/myscript/atk/styluscore/ParameterizedBrush;)V
.end method

.method public static final native GeometryComponent_setBrushWidth(JLcom/myscript/atk/styluscore/GeometryComponent;F)V
.end method

.method public static final native GeometryComponent_setConfig(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/InputMethodConfig;)V
.end method

.method public static final native GeometryComponent_setConstraintColorList(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/ListColor;)V
.end method

.method public static final native GeometryComponent_setContentOffset(JLcom/myscript/atk/styluscore/GeometryComponent;FF)V
.end method

.method public static final native GeometryComponent_setCurrentBrush__SWIG_0(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_setCurrentBrush__SWIG_1(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Brush;)V
.end method

.method public static final native GeometryComponent_setCurrentSelectionMode(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_setCurrentSelectionTool(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_setCurrentTool(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_setFitToHeight(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_setFitToWidth(JLcom/myscript/atk/styluscore/GeometryComponent;)V
.end method

.method public static final native GeometryComponent_setFloatValue(JLcom/myscript/atk/styluscore/GeometryComponent;IF)Z
.end method

.method public static final native GeometryComponent_setFrame(JLcom/myscript/atk/styluscore/GeometryComponent;FFFF)V
.end method

.method public static final native GeometryComponent_setItemInfo(JLcom/myscript/atk/styluscore/GeometryComponent;JJLcom/myscript/atk/styluscore/ItemInfo;)Z
.end method

.method public static final native GeometryComponent_setItemLength(JLcom/myscript/atk/styluscore/GeometryComponent;JJLcom/myscript/atk/styluscore/ItemLength;)Z
.end method

.method public static final native GeometryComponent_setMMToPointValue(JLcom/myscript/atk/styluscore/GeometryComponent;F)V
.end method

.method public static final native GeometryComponent_setPage(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Page;)V
.end method

.method public static final native GeometryComponent_setSmoothingType(JLcom/myscript/atk/styluscore/GeometryComponent;I)V
.end method

.method public static final native GeometryComponent_setState(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)V
.end method

.method public static final native GeometryComponent_sketchConfig(JLcom/myscript/atk/styluscore/GeometryComponent;)J
.end method

.method public static final native GeometryComponent_undo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z
.end method

.method public static final native GeometryComponent_valueRange(JLcom/myscript/atk/styluscore/GeometryComponent;IJJ)V
.end method

.method public static final native GeometryComponent_zoom(JLcom/myscript/atk/styluscore/GeometryComponent;)F
.end method

.method public static final native GeometryComponent_zoomAt(JLcom/myscript/atk/styluscore/GeometryComponent;FFF)V
.end method

.method public static final native GeometryComponent_zoomToRect(JLcom/myscript/atk/styluscore/GeometryComponent;FFFF)V
.end method

.method public static final native GeometryRendererDelegate_SWIGUpcast(J)J
.end method

.method public static final native GeometryRendererDelegate_beginConstraintDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/ConstraintInfo;)V
.end method

.method public static final native GeometryRendererDelegate_beginLayerDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;[B)V
.end method

.method public static final native GeometryRendererDelegate_beginModelDrawUpdate(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
.end method

.method public static final native GeometryRendererDelegate_beginTemporaryDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
.end method

.method public static final native GeometryRendererDelegate_drawArc(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/ArcPrimitive;J)V
.end method

.method public static final native GeometryRendererDelegate_drawCenter(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V
.end method

.method public static final native GeometryRendererDelegate_drawLine(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/LinePrimitive;J)V
.end method

.method public static final native GeometryRendererDelegate_drawPendingStroke(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/Stroke;J)V
.end method

.method public static final native GeometryRendererDelegate_drawPoint(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V
.end method

.method public static final native GeometryRendererDelegate_endConstraintDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
.end method

.method public static final native GeometryRendererDelegate_endLayerDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;[B)V
.end method

.method public static final native GeometryRendererDelegate_endModelDrawUpdate(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
.end method

.method public static final native GeometryRendererDelegate_endTemporaryDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
.end method

.method public static final native GeometryRendererDelegate_init(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)Z
.end method

.method public static final native GeometryRendererDelegate_release(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
.end method

.method public static final native GeometryRendererDelegate_setBackgroundColor(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native GeometryRendererDelegate_setBrush(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V
.end method

.method public static final native GeometryRendererDelegate_setFrame(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;FFFF)V
.end method

.method public static final native GeometryRendererDelegate_setPageDimensions(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;FF)V
.end method

.method public static final native GeometryUserParamsListener_SWIGUpcast(J)J
.end method

.method public static final native GeometryUserParamsListener_createMergedUserParams(JLcom/myscript/atk/styluscore/GeometryUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native GeometryUserParamsListener_createUserParamsFrom(JLcom/myscript/atk/styluscore/GeometryUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;IJLcom/myscript/atk/styluscore/Transform;)Ljava/lang/Object;
.end method

.method public static final native GeometryUserParamsListener_fromBytesToUserParams(JLcom/myscript/atk/styluscore/GeometryUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;[B)Ljava/lang/Object;
.end method

.method public static final native GeometryUserParamsListener_fromUserParamsToBytes(JLcom/myscript/atk/styluscore/GeometryUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;Ljava/lang/Object;)[B
.end method

.method public static final native GeometryUserParamsListener_modified(JLcom/myscript/atk/styluscore/GeometryUserParamsListener;JLcom/myscript/atk/styluscore/GeometryUserParams;JLcom/myscript/atk/styluscore/GeometryUserParams;)V
.end method

.method public static final native GeometryUserParams_associateToItemID(JLcom/myscript/atk/styluscore/GeometryUserParams;J)V
.end method

.method public static final native GeometryUserParams_associatedCount(JLcom/myscript/atk/styluscore/GeometryUserParams;)I
.end method

.method public static final native GeometryUserParams_clearAssociated(JLcom/myscript/atk/styluscore/GeometryUserParams;)V
.end method

.method public static final native GeometryUserParams_getAssociated(JLcom/myscript/atk/styluscore/GeometryUserParams;)J
.end method

.method public static final native GeometryUserParams_getBrush(JLcom/myscript/atk/styluscore/GeometryUserParams;)J
.end method

.method public static final native GeometryUserParams_getItemID(JLcom/myscript/atk/styluscore/GeometryUserParams;)J
.end method

.method public static final native GeometryUserParams_getSplited(JLcom/myscript/atk/styluscore/GeometryUserParams;)Z
.end method

.method public static final native GeometryUserParams_setBrush(JLcom/myscript/atk/styluscore/GeometryUserParams;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V
.end method

.method public static final native GeometryUserParams_setSplited(JLcom/myscript/atk/styluscore/GeometryUserParams;Z)V
.end method

.method public static final native GeometryUserParams_setType(JLcom/myscript/atk/styluscore/GeometryUserParams;I)V
.end method

.method public static final native GeometryUserParams_type(JLcom/myscript/atk/styluscore/GeometryUserParams;)I
.end method

.method public static final native IInkStorable_path__SWIG_0(JLcom/myscript/atk/styluscore/IInkStorable;I)J
.end method

.method public static final native IInkStorable_path__SWIG_1(JLcom/myscript/atk/styluscore/IInkStorable;)J
.end method

.method public static final native IInkStorable_type(JLcom/myscript/atk/styluscore/IInkStorable;)[B
.end method

.method public static final native IRendererDelegate_beginItemID(JLcom/myscript/atk/styluscore/IRendererDelegate;JJ)V
.end method

.method public static final native IRendererDelegate_beginLayerDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;[B)V
.end method

.method public static final native IRendererDelegate_beginModelDrawUpdate(JLcom/myscript/atk/styluscore/IRendererDelegate;)V
.end method

.method public static final native IRendererDelegate_beginTemporaryDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;)V
.end method

.method public static final native IRendererDelegate_drawArc(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/ArcPrimitive;J)V
.end method

.method public static final native IRendererDelegate_drawCenter(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V
.end method

.method public static final native IRendererDelegate_drawLine(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/LinePrimitive;J)V
.end method

.method public static final native IRendererDelegate_drawPendingStroke(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/Stroke;J)V
.end method

.method public static final native IRendererDelegate_drawPoint(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V
.end method

.method public static final native IRendererDelegate_endItemID(JLcom/myscript/atk/styluscore/IRendererDelegate;JJ)V
.end method

.method public static final native IRendererDelegate_endLayerDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;[B)V
.end method

.method public static final native IRendererDelegate_endModelDrawUpdate(JLcom/myscript/atk/styluscore/IRendererDelegate;)V
.end method

.method public static final native IRendererDelegate_endTemporaryDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;)V
.end method

.method public static final native IRendererDelegate_init(JLcom/myscript/atk/styluscore/IRendererDelegate;)Z
.end method

.method public static final native IRendererDelegate_release(JLcom/myscript/atk/styluscore/IRendererDelegate;)V
.end method

.method public static final native IRendererDelegate_setBackgroundColor(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native IRendererDelegate_setBrush(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V
.end method

.method public static final native IRendererDelegate_setFrame(JLcom/myscript/atk/styluscore/IRendererDelegate;FFFF)V
.end method

.method public static final native IRendererDelegate_setPageDimensions(JLcom/myscript/atk/styluscore/IRendererDelegate;FF)V
.end method

.method public static final native InkDebug_SWIGUpcast(J)J
.end method

.method public static final native InkField_cutAround(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkField_cutAt(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InkField_direction(JLcom/myscript/atk/styluscore/InkField;)I
.end method

.method public static final native InkField_formatted(JLcom/myscript/atk/styluscore/InkField;I)J
.end method

.method public static final native InkField_formattedExplicitSpaces(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/ListInkLocation;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native InkField_fromCandidate(JLcom/myscript/atk/styluscore/Candidate;)J
.end method

.method public static final native InkField_fromItemList__SWIG_0(JLcom/myscript/atk/styluscore/ListInkItem;[BFIIFFJLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native InkField_fromItemList__SWIG_1(JLcom/myscript/atk/styluscore/ListInkItem;[BFIIFF)J
.end method

.method public static final native InkField_fromItemList__SWIG_10(JLcom/myscript/atk/styluscore/ListInkItem;[B[BFF)J
.end method

.method public static final native InkField_fromItemList__SWIG_11(JLcom/myscript/atk/styluscore/ListInkItem;[B[BF)J
.end method

.method public static final native InkField_fromItemList__SWIG_12(JLcom/myscript/atk/styluscore/ListInkItem;[B[B)J
.end method

.method public static final native InkField_fromItemList__SWIG_2(JLcom/myscript/atk/styluscore/ListInkItem;[BFIIF)J
.end method

.method public static final native InkField_fromItemList__SWIG_3(JLcom/myscript/atk/styluscore/ListInkItem;[BFII)J
.end method

.method public static final native InkField_fromItemList__SWIG_4(JLcom/myscript/atk/styluscore/ListInkItem;[BFI)J
.end method

.method public static final native InkField_fromItemList__SWIG_5(JLcom/myscript/atk/styluscore/ListInkItem;[BF)J
.end method

.method public static final native InkField_fromItemList__SWIG_6(JLcom/myscript/atk/styluscore/ListInkItem;[B)J
.end method

.method public static final native InkField_fromItemList__SWIG_7(JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native InkField_fromItemList__SWIG_8(JLcom/myscript/atk/styluscore/ListInkItem;[B[BFFFJLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native InkField_fromItemList__SWIG_9(JLcom/myscript/atk/styluscore/ListInkItem;[B[BFFF)J
.end method

.method public static final native InkField_fromItem__SWIG_0(JLcom/myscript/atk/styluscore/InkItem;[BFIIFF)J
.end method

.method public static final native InkField_fromItem__SWIG_1(JLcom/myscript/atk/styluscore/InkItem;[BFIIF)J
.end method

.method public static final native InkField_fromItem__SWIG_2(JLcom/myscript/atk/styluscore/InkItem;[BFII)J
.end method

.method public static final native InkField_fromItem__SWIG_3(JLcom/myscript/atk/styluscore/InkItem;[BFI)J
.end method

.method public static final native InkField_fromItem__SWIG_4(JLcom/myscript/atk/styluscore/InkItem;[BF)J
.end method

.method public static final native InkField_fromItem__SWIG_5(JLcom/myscript/atk/styluscore/InkItem;[B)J
.end method

.method public static final native InkField_fromItem__SWIG_6(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native InkField_fromLabel__SWIG_0([BII)J
.end method

.method public static final native InkField_fromLabel__SWIG_1([BI)J
.end method

.method public static final native InkField_fromLabel__SWIG_2([B)J
.end method

.method public static final native InkField_fromParts(JLcom/myscript/atk/styluscore/ListInkField;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native InkField_fromSegment(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native InkField_fromWordSegmentList(JLcom/myscript/atk/styluscore/ListSegment;)J
.end method

.method public static final native InkField_getCircledCharactersRange(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_getGuideBoxes(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_grafted__SWIG_0(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkField;I)J
.end method

.method public static final native InkField_grafted__SWIG_1(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_grafted__SWIG_2(JLcom/myscript/atk/styluscore/ListInkField;I)J
.end method

.method public static final native InkField_inkLayout(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_isEmpty(JLcom/myscript/atk/styluscore/InkField;)Z
.end method

.method public static final native InkField_items(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_lineBreaksCount(JLcom/myscript/atk/styluscore/InkField;)I
.end method

.method public static final native InkField_lineBreaksNormalized(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_lineRangesFromLineBreaks(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_mapped(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/Transform;)J
.end method

.method public static final native InkField_normalized__SWIG_0(JLcom/myscript/atk/styluscore/InkField;Z)J
.end method

.method public static final native InkField_normalized__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_pendingStrokes(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_remove(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InkField_segments__SWIG_0(JLcom/myscript/atk/styluscore/InkField;I)J
.end method

.method public static final native InkField_segments__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_selectedLabel(JLcom/myscript/atk/styluscore/InkField;)[B
.end method

.method public static final native InkField_setInkLayout(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLayout;)V
.end method

.method public static final native InkField_setPendingStrokes(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/ListInkItem;)V
.end method

.method public static final native InkField_setTag(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkTag;)V
.end method

.method public static final native InkField_setTopLevelSegment(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/Segment;)V
.end method

.method public static final native InkField_setTransform(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/Transform;)V
.end method

.method public static final native InkField_simplified(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_split(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkField;)V
.end method

.method public static final native InkField_tagRange(JLcom/myscript/atk/styluscore/InkField;I)J
.end method

.method public static final native InkField_taggedWith__SWIG_0(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkTag;Z)J
.end method

.method public static final native InkField_taggedWith__SWIG_1(JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkTag;)J
.end method

.method public static final native InkField_tags(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_timeShifted(JLcom/myscript/atk/styluscore/InkField;J)J
.end method

.method public static final native InkField_topLevelSegment(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkField_transform(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InkItemUserParamsListener_createMergedUserParams(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItemUserParamsListener_createUserParamsFrom(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;IJLcom/myscript/atk/styluscore/Transform;)Ljava/lang/Object;
.end method

.method public static final native InkItemUserParamsListener_fromBytesToUserParams(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;[B)Ljava/lang/Object;
.end method

.method public static final native InkItemUserParamsListener_fromUserParamsToBytes(JLcom/myscript/atk/styluscore/InkItemUserParamsListener;JLcom/myscript/atk/styluscore/InkItem;Ljava/lang/Object;)[B
.end method

.method public static final native InkItemWidthColorUserParams_color_get(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)J
.end method

.method public static final native InkItemWidthColorUserParams_color_set(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;J)V
.end method

.method public static final native InkItemWidthColorUserParams_width_get(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)I
.end method

.method public static final native InkItemWidthColorUserParams_width_set(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;I)V
.end method

.method public static final native InkItem_barycenter__SWIG_0(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native InkItem_barycenter__SWIG_1(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native InkItem_boundingRect__SWIG_0(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native InkItem_boundingRect__SWIG_1(JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native InkItem_boundingRect__SWIG_2(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native InkItem_createCharBox__SWIG_0(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkItem_createCharBox__SWIG_1(JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native InkItem_createFlowMarker__SWIG_0(IJLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkItem_createFlowMarker__SWIG_1(I)J
.end method

.method public static final native InkItem_createGuideBox__SWIG_0(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkItem_createGuideBox__SWIG_1(JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native InkItem_createStringHolder__SWIG_0(JJLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkItem_createStringHolder__SWIG_1(J)J
.end method

.method public static final native InkItem_createStroke__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkItem_createStroke__SWIG_1(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkItem_createStroke__SWIG_2(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native InkItem_duration(JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItem_flowMarker(JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItem_getUserParams(JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItem_hashCode(JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItem_is(JLcom/myscript/atk/styluscore/InkItem;I)Z
.end method

.method public static final native InkItem_isEmpty(JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_isGreater(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_isGreaterOrEqual(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_isLower(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_isLowerOrEqual(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_length(JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItem_mapped(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/Transform;)J
.end method

.method public static final native InkItem_nativeEquals(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_notEquals(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z
.end method

.method public static final native InkItem_path(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native InkItem_setDuration(JLcom/myscript/atk/styluscore/InkItem;J)V
.end method

.method public static final native InkItem_setPath(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/Path;)V
.end method

.method public static final native InkItem_setTimeStamp(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/VoTimeStamp;)V
.end method

.method public static final native InkItem_setType(JLcom/myscript/atk/styluscore/InkItem;I)V
.end method

.method public static final native InkItem_setUserParams(JLcom/myscript/atk/styluscore/InkItem;IJLcom/myscript/atk/styluscore/InkItemUserParamsListener;)V
.end method

.method public static final native InkItem_simplified(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/IntegerRange;)J
.end method

.method public static final native InkItem_timeStamp(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native InkItem_timeStampAt(JLcom/myscript/atk/styluscore/InkItem;I)J
.end method

.method public static final native InkItem_type(JLcom/myscript/atk/styluscore/InkItem;)I
.end method

.method public static final native InkItem_updateUserParametersListener(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)Z
.end method

.method public static final native InkItem_userParamsListener(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native InkLayout_ascenderShift(JLcom/myscript/atk/styluscore/InkLayout;)F
.end method

.method public static final native InkLayout_clearGuidelines(JLcom/myscript/atk/styluscore/InkLayout;)V
.end method

.method public static final native InkLayout_defaultDirection(JLcom/myscript/atk/styluscore/InkLayout;)I
.end method

.method public static final native InkLayout_descenderShift(JLcom/myscript/atk/styluscore/InkLayout;)F
.end method

.method public static final native InkLayout_getDirectionFromLocale([B)I
.end method

.method public static final native InkLayout_getNearestGuideline(JLcom/myscript/atk/styluscore/InkLayout;F)F
.end method

.method public static final native InkLayout_guidelineCount(JLcom/myscript/atk/styluscore/InkLayout;)I
.end method

.method public static final native InkLayout_guidelineGap(JLcom/myscript/atk/styluscore/InkLayout;)F
.end method

.method public static final native InkLayout_guidelinePos(JLcom/myscript/atk/styluscore/InkLayout;)F
.end method

.method public static final native InkLayout_midlineShift(JLcom/myscript/atk/styluscore/InkLayout;)F
.end method

.method public static final native InkLayout_modifiers(JLcom/myscript/atk/styluscore/InkLayout;)I
.end method

.method public static final native InkLayout_setAscenderShift(JLcom/myscript/atk/styluscore/InkLayout;F)V
.end method

.method public static final native InkLayout_setDefaultDirection(JLcom/myscript/atk/styluscore/InkLayout;I)V
.end method

.method public static final native InkLayout_setDescenderShift(JLcom/myscript/atk/styluscore/InkLayout;F)V
.end method

.method public static final native InkLayout_setGuidelines__SWIG_0(JLcom/myscript/atk/styluscore/InkLayout;FFI)V
.end method

.method public static final native InkLayout_setGuidelines__SWIG_1(JLcom/myscript/atk/styluscore/InkLayout;FF)V
.end method

.method public static final native InkLayout_setGuidelines__SWIG_2(JLcom/myscript/atk/styluscore/InkLayout;F)V
.end method

.method public static final native InkLayout_setMidlineShift(JLcom/myscript/atk/styluscore/InkLayout;F)V
.end method

.method public static final native InkLayout_setModifiers(JLcom/myscript/atk/styluscore/InkLayout;I)V
.end method

.method public static final native InkLocation_isAt(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkItem;I)Z
.end method

.method public static final native InkLocation_isAtBeginningOfItem(JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkLocation_isAtEndOfItem(JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkLocation_isBefore(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkLocation_isInsideStroke(JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkLocation_item(JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InkLocation_location(JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InkLocation_nativeEquals(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkLocation_notEquals(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkLocation_point(JLcom/myscript/atk/styluscore/InkLocation;)I
.end method

.method public static final native InkLocation_setAtBeginningOfStroke(JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native InkLocation_setAtEndOfStroke(JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native InkLocation_setInsideStrokeAtPoint(JLcom/myscript/atk/styluscore/InkLocation;I)Z
.end method

.method public static final native InkRange_append__SWIG_0(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ItemRange;I)I
.end method

.method public static final native InkRange_append__SWIG_1(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ItemRange;)I
.end method

.method public static final native InkRange_append__SWIG_2(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_barycenter(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_begin(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_boundingRect(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_contains__SWIG_0(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native InkRange_contains__SWIG_1(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)Z
.end method

.method public static final native InkRange_duration(JLcom/myscript/atk/styluscore/InkRange;)I
.end method

.method public static final native InkRange_end(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_extractFullPathsInside(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native InkRange_extractPaths(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_extractPathsInside(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native InkRange_filtered(JLcom/myscript/atk/styluscore/InkRange;I)J
.end method

.method public static final native InkRange_getRealInkRange(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_getRealInkRangeBoundingRect(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_has(JLcom/myscript/atk/styluscore/InkRange;I)Z
.end method

.method public static final native InkRange_hashCode(JLcom/myscript/atk/styluscore/InkRange;)I
.end method

.method public static final native InkRange_intersected(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_intersects(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)Z
.end method

.method public static final native InkRange_is(JLcom/myscript/atk/styluscore/InkRange;I)Z
.end method

.method public static final native InkRange_isEmpty(JLcom/myscript/atk/styluscore/InkRange;)Z
.end method

.method public static final native InkRange_isolatedForwardLigatureRemoved(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_length(JLcom/myscript/atk/styluscore/InkRange;)I
.end method

.method public static final native InkRange_limits(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_mapped(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native InkRange_nativeEquals(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)Z
.end method

.method public static final native InkRange_notEquals(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)Z
.end method

.method public static final native InkRange_rangeAt(JLcom/myscript/atk/styluscore/InkRange;I)J
.end method

.method public static final native InkRange_rangeCount(JLcom/myscript/atk/styluscore/InkRange;)I
.end method

.method public static final native InkRange_ranges(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_replaceRangeAt(JLcom/myscript/atk/styluscore/InkRange;IJLcom/myscript/atk/styluscore/ItemRange;)V
.end method

.method public static final native InkRange_samplingStep(JLcom/myscript/atk/styluscore/InkRange;)F
.end method

.method public static final native InkRange_sanityCheck(JLcom/myscript/atk/styluscore/InkRange;)Z
.end method

.method public static final native InkRange_setRanges(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListItemRange;)V
.end method

.method public static final native InkRange_simplified(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native InkRange_split(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InkRange_substracted(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_timeShifted(JLcom/myscript/atk/styluscore/InkRange;J)J
.end method

.method public static final native InkRange_timeStamp__SWIG_0(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native InkRange_timeStamp__SWIG_1(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkRange_united(JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InkSearchListener_configured(JLcom/myscript/atk/styluscore/InkSearchListener;JLcom/myscript/atk/styluscore/InkSearch;I)V
.end method

.method public static final native InkSearchListener_indexingCanceled(JLcom/myscript/atk/styluscore/InkSearchListener;)V
.end method

.method public static final native InkSearchListener_indexingProgress(JLcom/myscript/atk/styluscore/InkSearchListener;II)Z
.end method

.method public static final native InkSearchListener_searchCallBack(JLcom/myscript/atk/styluscore/InkSearchListener;JLcom/myscript/atk/styluscore/ListSearchResult;)V
.end method

.method public static final native InkSearchListener_searchCanceled(JLcom/myscript/atk/styluscore/InkSearchListener;)V
.end method

.method public static final native InkSearchListener_searchProgress(JLcom/myscript/atk/styluscore/InkSearchListener;II)Z
.end method

.method public static final native InkSearch_buildIndex(JLcom/myscript/atk/styluscore/InkSearch;JLcom/myscript/atk/styluscore/InkField;Ljava/nio/channels/WritableByteChannel;S)V
.end method

.method public static final native InkSearch_cancel(JLcom/myscript/atk/styluscore/InkSearch;)V
.end method

.method public static final native InkSearch_search(JLcom/myscript/atk/styluscore/InkSearch;JLcom/myscript/atk/styluscore/InkField;[BLjava/nio/channels/ReadableByteChannel;)V
.end method

.method public static final native InkSearch_setConfig(JLcom/myscript/atk/styluscore/InkSearch;JLcom/myscript/atk/styluscore/InputMethodConfig;)V
.end method

.method public static final native InkSearch_setListener(JLcom/myscript/atk/styluscore/InkSearch;JLcom/myscript/atk/styluscore/InkSearchListener;)V
.end method

.method public static final native InkTag_mapped(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native InkTag_name(JLcom/myscript/atk/styluscore/InkTag;)I
.end method

.method public static final native InkTag_nativeEquals(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/InkTag;)Z
.end method

.method public static final native InkTag_range(JLcom/myscript/atk/styluscore/InkTag;)J
.end method

.method public static final native InkTag_setName(JLcom/myscript/atk/styluscore/InkTag;I)V
.end method

.method public static final native InkTag_setRange(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InkTag_simplified(JLcom/myscript/atk/styluscore/InkTag;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native InkTag_timeShifted(JLcom/myscript/atk/styluscore/InkTag;J)J
.end method

.method public static final native InputMethodConfig_addLexicon(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/ListString;)V
.end method

.method public static final native InputMethodConfig_addLexiconEntry(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_addResource(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_addResourceDir(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_autoIso(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_candidateListSize(JLcom/myscript/atk/styluscore/InputMethodConfig;I)J
.end method

.method public static final native InputMethodConfig_certificate(JLcom/myscript/atk/styluscore/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_coordinateResolution(JLcom/myscript/atk/styluscore/InputMethodConfig;)F
.end method

.method public static final native InputMethodConfig_freezeTimeout(JLcom/myscript/atk/styluscore/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_isPrefixRecognition(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_locale(JLcom/myscript/atk/styluscore/InputMethodConfig;)[B
.end method

.method public static final native InputMethodConfig_localeTextDirection(JLcom/myscript/atk/styluscore/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_missingResources(JLcom/myscript/atk/styluscore/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_nativeEquals(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_notEquals(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_productID(JLcom/myscript/atk/styluscore/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_protectionListener(JLcom/myscript/atk/styluscore/InputMethodConfig;)Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;
.end method

.method public static final native InputMethodConfig_resources(JLcom/myscript/atk/styluscore/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_searchResource(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)[B
.end method

.method public static final native InputMethodConfig_setAutoIso(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_setCandidateListSize(JLcom/myscript/atk/styluscore/InputMethodConfig;IJ)V
.end method

.method public static final native InputMethodConfig_setCertificate(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_setCoordinateResolution(JLcom/myscript/atk/styluscore/InputMethodConfig;F)V
.end method

.method public static final native InputMethodConfig_setFreezeTimeout(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setLocale(JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_setPrefixRecognition(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_setProductID(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setProtectionListener(JLcom/myscript/atk/styluscore/InputMethodConfig;Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;)V
.end method

.method public static final native InputMethodConfig_setSpeedQualityCompromise(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setStrictAlienCharacters(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_setUnfreezeWordCount(JLcom/myscript/atk/styluscore/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setUnfreezeWordsAccrossLines(JLcom/myscript/atk/styluscore/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_speedQualityCompromise(JLcom/myscript/atk/styluscore/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_strictAlienCharacters(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_supplementaryLexicon(JLcom/myscript/atk/styluscore/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_unfreezeWordCount(JLcom/myscript/atk/styluscore/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_unfreezeWordsAccrossLines(JLcom/myscript/atk/styluscore/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_updateLexicon(JLcom/myscript/atk/styluscore/InputMethodConfig;JLcom/myscript/atk/styluscore/ListString;)V
.end method

.method public static final native InputMethodListener_angleGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_backspaceGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native InputMethodListener_configured(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;I)V
.end method

.method public static final native InputMethodListener_eraseGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_flowSync(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;I)V
.end method

.method public static final native InputMethodListener_insertGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native InputMethodListener_joinGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native InputMethodListener_junctionGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_lengthGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_overwriteGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_parallelGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_perpendicularGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_progress(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;II)V
.end method

.method public static final native InputMethodListener_returnGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native InputMethodListener_selectionGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_singleTapGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native InputMethodListener_spaceGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native InputMethodListener_underlineGesture(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native InputMethodListener_update(JLcom/myscript/atk/styluscore/InputMethodListener;JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native InputMethod_addStroke(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkItem;)V
.end method

.method public static final native InputMethod_addStrokes(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/ListInkItem;)V
.end method

.method public static final native InputMethod_config(JLcom/myscript/atk/styluscore/InputMethod;)J
.end method

.method public static final native InputMethod_contains(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/Point;)Z
.end method

.method public static final native InputMethod_defaultAngleGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultBackspaceGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InputMethod_defaultEraseGesture__SWIG_0(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;Z)J
.end method

.method public static final native InputMethod_defaultEraseGesture__SWIG_1(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultInsertGesture__SWIG_0(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;Z)J
.end method

.method public static final native InputMethod_defaultInsertGesture__SWIG_1(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InputMethod_defaultJoinGesture__SWIG_0(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;F)J
.end method

.method public static final native InputMethod_defaultJoinGesture__SWIG_1(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InputMethod_defaultJunctionGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultLengthEqualityGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultOverwriteGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultParallelGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultPerpendicularGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultReturnGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InputMethod_defaultSelectionGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_defaultSingleTapGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native InputMethod_defaultSpaceGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native InputMethod_defaultUnderlineGesture(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native InputMethod_disableGestures(JLcom/myscript/atk/styluscore/InputMethod;I)V
.end method

.method public static final native InputMethod_enableGestures(JLcom/myscript/atk/styluscore/InputMethod;I)V
.end method

.method public static final native InputMethod_errorCode(JLcom/myscript/atk/styluscore/InputMethod;)I
.end method

.method public static final native InputMethod_errorCodeToString(I)[B
.end method

.method public static final native InputMethod_errorString(JLcom/myscript/atk/styluscore/InputMethod;)[B
.end method

.method public static final native InputMethod_failed(JLcom/myscript/atk/styluscore/InputMethod;)Z
.end method

.method public static final native InputMethod_field(JLcom/myscript/atk/styluscore/InputMethod;)J
.end method

.method public static final native InputMethod_gestureName(I)[B
.end method

.method public static final native InputMethod_gestureSet(JLcom/myscript/atk/styluscore/InputMethod;)I
.end method

.method public static final native InputMethod_gestureStrokes(JLcom/myscript/atk/styluscore/InputMethod;)J
.end method

.method public static final native InputMethod_gestureType(JLcom/myscript/atk/styluscore/InputMethod;)I
.end method

.method public static final native InputMethod_gestureTypeName(I)[B
.end method

.method public static final native InputMethod_name(JLcom/myscript/atk/styluscore/InputMethod;)[B
.end method

.method public static final native InputMethod_penAbort(JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native InputMethod_penDown(JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native InputMethod_penMove(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/Point;)V
.end method

.method public static final native InputMethod_penUp(JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static native InputMethod_penUpWithUserParams(JLcom/myscript/atk/styluscore/InputMethod;IJLcom/myscript/atk/styluscore/InkItemUserParamsListener;)V
.end method

.method public static final native InputMethod_setConfig(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InputMethodConfig;)V
.end method

.method public static final native InputMethod_setField(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InkField;)V
.end method

.method public static final native InputMethod_setFlowMarker(JLcom/myscript/atk/styluscore/InputMethod;I)V
.end method

.method public static final native InputMethod_setListener(JLcom/myscript/atk/styluscore/InputMethod;JLcom/myscript/atk/styluscore/InputMethodListener;)V
.end method

.method public static final native InputMethod_waitIdle(JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native InputMethod_waitReco(JLcom/myscript/atk/styluscore/InputMethod;)V
.end method

.method public static final native IntegerRange_begin(JLcom/myscript/atk/styluscore/IntegerRange;)I
.end method

.method public static final native IntegerRange_contains__SWIG_0(JLcom/myscript/atk/styluscore/IntegerRange;I)Z
.end method

.method public static final native IntegerRange_contains__SWIG_1(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z
.end method

.method public static final native IntegerRange_end(JLcom/myscript/atk/styluscore/IntegerRange;)I
.end method

.method public static final native IntegerRange_hashCode(JLcom/myscript/atk/styluscore/IntegerRange;)I
.end method

.method public static final native IntegerRange_intersectedWith(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)J
.end method

.method public static final native IntegerRange_intersects(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z
.end method

.method public static final native IntegerRange_isEmpty(JLcom/myscript/atk/styluscore/IntegerRange;)Z
.end method

.method public static final native IntegerRange_length(JLcom/myscript/atk/styluscore/IntegerRange;)I
.end method

.method public static final native IntegerRange_nativeEquals(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z
.end method

.method public static final native IntegerRange_notEquals(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)Z
.end method

.method public static final native IntegerRange_substractedFrom(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)J
.end method

.method public static final native IntegerRange_unitedTo(JLcom/myscript/atk/styluscore/IntegerRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)J
.end method

.method public static final native IsolatedInputMethod_SWIGUpcast(J)J
.end method

.method public static final native ItemInfo_getDisplayValue(JLcom/myscript/atk/styluscore/ItemInfo;)Z
.end method

.method public static final native ItemInfo_getLabel(JLcom/myscript/atk/styluscore/ItemInfo;)[B
.end method

.method public static final native ItemInfo_valid(JLcom/myscript/atk/styluscore/ItemInfo;)Z
.end method

.method public static final native ItemLength_getUnitLabel(JLcom/myscript/atk/styluscore/ItemLength;)[B
.end method

.method public static final native ItemLength_getValue(JLcom/myscript/atk/styluscore/ItemLength;)F
.end method

.method public static final native ItemLength_valid(JLcom/myscript/atk/styluscore/ItemLength;)Z
.end method

.method public static final native ItemRange_append__SWIG_0(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/IntegerRange;)V
.end method

.method public static final native ItemRange_append__SWIG_1(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ListIntegerRange;)V
.end method

.method public static final native ItemRange_boundingRect(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_contains__SWIG_0(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native ItemRange_contains__SWIG_1(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z
.end method

.method public static final native ItemRange_extractPaths(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_hashCode(JLcom/myscript/atk/styluscore/ItemRange;)I
.end method

.method public static final native ItemRange_intersected(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_intersects(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z
.end method

.method public static final native ItemRange_is(JLcom/myscript/atk/styluscore/ItemRange;I)Z
.end method

.method public static final native ItemRange_isEmpty(JLcom/myscript/atk/styluscore/ItemRange;)Z
.end method

.method public static final native ItemRange_isolatedForwardLigatureRemoved(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_item(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_length(JLcom/myscript/atk/styluscore/ItemRange;)I
.end method

.method public static final native ItemRange_mapped(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native ItemRange_nativeEquals(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z
.end method

.method public static final native ItemRange_notEquals(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)Z
.end method

.method public static final native ItemRange_rangeAt(JLcom/myscript/atk/styluscore/ItemRange;I)J
.end method

.method public static final native ItemRange_rangeCount(JLcom/myscript/atk/styluscore/ItemRange;)I
.end method

.method public static final native ItemRange_ranges(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_setItem(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/InkItem;)V
.end method

.method public static final native ItemRange_setRangeAt(JLcom/myscript/atk/styluscore/ItemRange;IJLcom/myscript/atk/styluscore/IntegerRange;)V
.end method

.method public static final native ItemRange_simplified(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native ItemRange_split(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)V
.end method

.method public static final native ItemRange_substracted(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItemRange_timeShifted(JLcom/myscript/atk/styluscore/ItemRange;J)J
.end method

.method public static final native ItemRange_timeStamp(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native ItemRange_united(JLcom/myscript/atk/styluscore/ItemRange;JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native ItfReader_comment__SWIG_0(JLcom/myscript/atk/styluscore/ItfReader;[B)[B
.end method

.method public static final native ItfReader_comment__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)[B
.end method

.method public static final native ItfReader_config__SWIG_0(JLcom/myscript/atk/styluscore/ItfReader;[B)J
.end method

.method public static final native ItfReader_config__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)J
.end method

.method public static final native ItfReader_errorCode(JLcom/myscript/atk/styluscore/ItfReader;)I
.end method

.method public static final native ItfReader_errorCodeToString(I)[B
.end method

.method public static final native ItfReader_errorLine(JLcom/myscript/atk/styluscore/ItfReader;)I
.end method

.method public static final native ItfReader_errorString(JLcom/myscript/atk/styluscore/ItfReader;)[B
.end method

.method public static final native ItfReader_failed(JLcom/myscript/atk/styluscore/ItfReader;)Z
.end method

.method public static final native ItfReader_field__SWIG_0(JLcom/myscript/atk/styluscore/ItfReader;[B)J
.end method

.method public static final native ItfReader_field__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)J
.end method

.method public static final native ItfReader_fields(JLcom/myscript/atk/styluscore/ItfReader;)J
.end method

.method public static final native ItfReader_strokes(JLcom/myscript/atk/styluscore/ItfReader;)J
.end method

.method public static final native ItfWriter_addStroke(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InkItem;)V
.end method

.method public static final native ItfWriter_addStrokes(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/ListInkItem;)V
.end method

.method public static final native ItfWriter_disableProperty(JLcom/myscript/atk/styluscore/ItfWriter;I)V
.end method

.method public static final native ItfWriter_enableProperty(JLcom/myscript/atk/styluscore/ItfWriter;I)V
.end method

.method public static final native ItfWriter_errorCode(JLcom/myscript/atk/styluscore/ItfWriter;)I
.end method

.method public static final native ItfWriter_errorCodeToString(I)[B
.end method

.method public static final native ItfWriter_errorLine(JLcom/myscript/atk/styluscore/ItfWriter;)I
.end method

.method public static final native ItfWriter_errorString(JLcom/myscript/atk/styluscore/ItfWriter;)[B
.end method

.method public static final native ItfWriter_failed(JLcom/myscript/atk/styluscore/ItfWriter;)Z
.end method

.method public static final native ItfWriter_setComment__SWIG_0(JLcom/myscript/atk/styluscore/ItfWriter;[B[B)V
.end method

.method public static final native ItfWriter_setComment__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;[B)V
.end method

.method public static final native ItfWriter_setConfig__SWIG_0(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InputMethodConfig;[B)V
.end method

.method public static final native ItfWriter_setConfig__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InputMethodConfig;)V
.end method

.method public static final native ItfWriter_setField__SWIG_0(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InkField;[B)V
.end method

.method public static final native ItfWriter_setField__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;JLcom/myscript/atk/styluscore/InkField;)V
.end method

.method public static final native ItfWriter_write(JLcom/myscript/atk/styluscore/ItfWriter;[B)V
.end method

.method public static final native LinePrimitive_SWIGUpcast(J)J
.end method

.method public static final native LinePrimitive_firstHasArrowHead(JLcom/myscript/atk/styluscore/LinePrimitive;)Z
.end method

.method public static final native LinePrimitive_lastHasArrowHead(JLcom/myscript/atk/styluscore/LinePrimitive;)Z
.end method

.method public static final native LinePrimitive_p1(JLcom/myscript/atk/styluscore/LinePrimitive;)J
.end method

.method public static final native LinePrimitive_p2(JLcom/myscript/atk/styluscore/LinePrimitive;)J
.end method

.method public static final native LinePrimitive_path__SWIG_0(JLcom/myscript/atk/styluscore/LinePrimitive;I)J
.end method

.method public static final native LinePrimitive_path__SWIG_1(JLcom/myscript/atk/styluscore/LinePrimitive;)J
.end method

.method public static final native ListArchive_native_add(JLcom/myscript/atk/styluscore/ListArchive;JLcom/myscript/atk/styluscore/Archive;)V
.end method

.method public static final native ListArchive_native_at(JLcom/myscript/atk/styluscore/ListArchive;I)J
.end method

.method public static final native ListArchive_native_size(JLcom/myscript/atk/styluscore/ListArchive;)I
.end method

.method public static final native ListBrush_native_add(JLcom/myscript/atk/styluscore/ListBrush;JLcom/myscript/atk/styluscore/Brush;)V
.end method

.method public static final native ListBrush_native_at(JLcom/myscript/atk/styluscore/ListBrush;I)J
.end method

.method public static final native ListBrush_native_size(JLcom/myscript/atk/styluscore/ListBrush;)I
.end method

.method public static final native ListCandidate_native_add(JLcom/myscript/atk/styluscore/ListCandidate;JLcom/myscript/atk/styluscore/Candidate;)V
.end method

.method public static final native ListCandidate_native_at(JLcom/myscript/atk/styluscore/ListCandidate;I)J
.end method

.method public static final native ListCandidate_native_size(JLcom/myscript/atk/styluscore/ListCandidate;)I
.end method

.method public static final native ListChar_native_add(JLcom/myscript/atk/styluscore/ListChar;JLcom/myscript/atk/styluscore/Char;)V
.end method

.method public static final native ListChar_native_at(JLcom/myscript/atk/styluscore/ListChar;I)J
.end method

.method public static final native ListChar_native_size(JLcom/myscript/atk/styluscore/ListChar;)I
.end method

.method public static final native ListColor_native_add(JLcom/myscript/atk/styluscore/ListColor;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native ListColor_native_at(JLcom/myscript/atk/styluscore/ListColor;I)J
.end method

.method public static final native ListColor_native_size(JLcom/myscript/atk/styluscore/ListColor;)I
.end method

.method public static final native ListFloat_native_add(JLcom/myscript/atk/styluscore/ListFloat;F)V
.end method

.method public static final native ListFloat_native_at(JLcom/myscript/atk/styluscore/ListFloat;I)F
.end method

.method public static final native ListFloat_native_size(JLcom/myscript/atk/styluscore/ListFloat;)I
.end method

.method public static final native ListInkField_native_add(JLcom/myscript/atk/styluscore/ListInkField;JLcom/myscript/atk/styluscore/InkField;)V
.end method

.method public static final native ListInkField_native_at(JLcom/myscript/atk/styluscore/ListInkField;I)J
.end method

.method public static final native ListInkField_native_size(JLcom/myscript/atk/styluscore/ListInkField;)I
.end method

.method public static final native ListInkItem_native_add(JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/InkItem;)V
.end method

.method public static final native ListInkItem_native_at(JLcom/myscript/atk/styluscore/ListInkItem;I)J
.end method

.method public static final native ListInkItem_native_size(JLcom/myscript/atk/styluscore/ListInkItem;)I
.end method

.method public static final native ListInkLocation_native_add(JLcom/myscript/atk/styluscore/ListInkLocation;JLcom/myscript/atk/styluscore/InkLocation;)V
.end method

.method public static final native ListInkLocation_native_at(JLcom/myscript/atk/styluscore/ListInkLocation;I)J
.end method

.method public static final native ListInkLocation_native_size(JLcom/myscript/atk/styluscore/ListInkLocation;)I
.end method

.method public static final native ListInkRange_native_add(JLcom/myscript/atk/styluscore/ListInkRange;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native ListInkRange_native_at(JLcom/myscript/atk/styluscore/ListInkRange;I)J
.end method

.method public static final native ListInkRange_native_size(JLcom/myscript/atk/styluscore/ListInkRange;)I
.end method

.method public static final native ListInkTag_native_add(JLcom/myscript/atk/styluscore/ListInkTag;JLcom/myscript/atk/styluscore/InkTag;)V
.end method

.method public static final native ListInkTag_native_at(JLcom/myscript/atk/styluscore/ListInkTag;I)J
.end method

.method public static final native ListInkTag_native_size(JLcom/myscript/atk/styluscore/ListInkTag;)I
.end method

.method public static final native ListInt_native_add(JLcom/myscript/atk/styluscore/ListInt;I)V
.end method

.method public static final native ListInt_native_at(JLcom/myscript/atk/styluscore/ListInt;I)I
.end method

.method public static final native ListInt_native_size(JLcom/myscript/atk/styluscore/ListInt;)I
.end method

.method public static final native ListIntegerRange_native_add(JLcom/myscript/atk/styluscore/ListIntegerRange;JLcom/myscript/atk/styluscore/IntegerRange;)V
.end method

.method public static final native ListIntegerRange_native_at(JLcom/myscript/atk/styluscore/ListIntegerRange;I)J
.end method

.method public static final native ListIntegerRange_native_size(JLcom/myscript/atk/styluscore/ListIntegerRange;)I
.end method

.method public static final native ListItemRange_native_add(JLcom/myscript/atk/styluscore/ListItemRange;JLcom/myscript/atk/styluscore/ItemRange;)V
.end method

.method public static final native ListItemRange_native_at(JLcom/myscript/atk/styluscore/ListItemRange;I)J
.end method

.method public static final native ListItemRange_native_size(JLcom/myscript/atk/styluscore/ListItemRange;)I
.end method

.method public static final native ListLong_native_add(JLcom/myscript/atk/styluscore/ListLong;J)V
.end method

.method public static final native ListLong_native_at(JLcom/myscript/atk/styluscore/ListLong;I)J
.end method

.method public static final native ListLong_native_size(JLcom/myscript/atk/styluscore/ListLong;)I
.end method

.method public static final native ListPath_native_add(JLcom/myscript/atk/styluscore/ListPath;JLcom/myscript/atk/styluscore/Path;)V
.end method

.method public static final native ListPath_native_at(JLcom/myscript/atk/styluscore/ListPath;I)J
.end method

.method public static final native ListPath_native_size(JLcom/myscript/atk/styluscore/ListPath;)I
.end method

.method public static final native ListPoint_native_add(JLcom/myscript/atk/styluscore/ListPoint;JLcom/myscript/atk/styluscore/Point;)V
.end method

.method public static final native ListPoint_native_at(JLcom/myscript/atk/styluscore/ListPoint;I)J
.end method

.method public static final native ListPoint_native_size(JLcom/myscript/atk/styluscore/ListPoint;)I
.end method

.method public static final native ListRect_native_add(JLcom/myscript/atk/styluscore/ListRect;JLcom/myscript/atk/styluscore/Rect;)V
.end method

.method public static final native ListRect_native_at(JLcom/myscript/atk/styluscore/ListRect;I)J
.end method

.method public static final native ListRect_native_size(JLcom/myscript/atk/styluscore/ListRect;)I
.end method

.method public static final native ListSearchResult_native_add(JLcom/myscript/atk/styluscore/ListSearchResult;JLcom/myscript/atk/styluscore/SearchResult;)V
.end method

.method public static final native ListSearchResult_native_at(JLcom/myscript/atk/styluscore/ListSearchResult;I)J
.end method

.method public static final native ListSearchResult_native_size(JLcom/myscript/atk/styluscore/ListSearchResult;)I
.end method

.method public static final native ListSegment_native_add(JLcom/myscript/atk/styluscore/ListSegment;JLcom/myscript/atk/styluscore/Segment;)V
.end method

.method public static final native ListSegment_native_at(JLcom/myscript/atk/styluscore/ListSegment;I)J
.end method

.method public static final native ListSegment_native_size(JLcom/myscript/atk/styluscore/ListSegment;)I
.end method

.method public static final native ListString_native_add(JLcom/myscript/atk/styluscore/ListString;[B)V
.end method

.method public static final native ListString_native_at(JLcom/myscript/atk/styluscore/ListString;I)[B
.end method

.method public static final native ListString_native_size(JLcom/myscript/atk/styluscore/ListString;)I
.end method

.method public static final native ListUnicodeDb_native_add(JLcom/myscript/atk/styluscore/ListUnicodeDb;J)V
.end method

.method public static final native ListUnicodeDb_native_at(JLcom/myscript/atk/styluscore/ListUnicodeDb;I)J
.end method

.method public static final native ListUnicodeDb_native_size(JLcom/myscript/atk/styluscore/ListUnicodeDb;)I
.end method

.method public static final native Log_disableSerialization()V
.end method

.method public static final native Log_disable__SWIG_0(I)V
.end method

.method public static final native Log_disable__SWIG_1()V
.end method

.method public static final native Log_elapsed(JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native Log_enableSerialization([B)V
.end method

.method public static final native Log_enableTimings(Z)V
.end method

.method public static final native Log_enable__SWIG_0(I)V
.end method

.method public static final native Log_enable__SWIG_1()V
.end method

.method public static final native Log_getFilter()I
.end method

.method public static final native Log_getSerializationFilePath()[B
.end method

.method public static final native Log_isTimingsEnabled()Z
.end method

.method public static final native Log_serializationEnabled()Z
.end method

.method public static final native Log_setTimings(Z)V
.end method

.method public static final native Page_addObject(JLcom/myscript/atk/styluscore/Page;[B[B)[B
.end method

.method public static final native Page_canRedo(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_canUndo(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_close(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_creationDate(JLcom/myscript/atk/styluscore/Page;)D
.end method

.method public static final native Page_height(JLcom/myscript/atk/styluscore/Page;)F
.end method

.method public static final native Page_modificationDate(JLcom/myscript/atk/styluscore/Page;)D
.end method

.method public static final native Page_readDate(JLcom/myscript/atk/styluscore/Page;)D
.end method

.method public static final native Page_redo(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_save(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_saveToTemp(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_setBackgroundColor(JLcom/myscript/atk/styluscore/Page;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native Page_setBackgroundImage(JLcom/myscript/atk/styluscore/Page;IIJ)V
.end method

.method public static final native Page_setCreationDate(JLcom/myscript/atk/styluscore/Page;D)Z
.end method

.method public static final native Page_setHeight(JLcom/myscript/atk/styluscore/Page;F)V
.end method

.method public static final native Page_setModificationDate(JLcom/myscript/atk/styluscore/Page;D)Z
.end method

.method public static final native Page_setReadDate(JLcom/myscript/atk/styluscore/Page;D)Z
.end method

.method public static final native Page_setWidth(JLcom/myscript/atk/styluscore/Page;F)V
.end method

.method public static final native Page_strokeCount(JLcom/myscript/atk/styluscore/Page;)I
.end method

.method public static final native Page_undo(JLcom/myscript/atk/styluscore/Page;)Z
.end method

.method public static final native Page_width(JLcom/myscript/atk/styluscore/Page;)F
.end method

.method public static final native ParameterizedBrush_brush(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J
.end method

.method public static final native ParameterizedBrush_c_strSmoothing(I)Ljava/lang/String;
.end method

.method public static final native ParameterizedBrush_color(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J
.end method

.method public static final native ParameterizedBrush_configureBrush__SWIG_0(JLcom/myscript/atk/styluscore/ParameterizedBrush;IF)V
.end method

.method public static final native ParameterizedBrush_configureBrush__SWIG_1(JLcom/myscript/atk/styluscore/ParameterizedBrush;Ljava/lang/String;F)V
.end method

.method public static final native ParameterizedBrush_getHash(JLcom/myscript/atk/styluscore/ParameterizedBrush;)[B
.end method

.method public static final native ParameterizedBrush_getSerializedParameterizedBrush(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J
.end method

.method public static final native ParameterizedBrush_setBrush(JLcom/myscript/atk/styluscore/ParameterizedBrush;JLcom/myscript/atk/styluscore/Brush;)V
.end method

.method public static final native ParameterizedBrush_setBrushColor(JLcom/myscript/atk/styluscore/ParameterizedBrush;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native ParameterizedBrush_setSerializedParametrizedBrush(JLcom/myscript/atk/styluscore/ParameterizedBrush;J)V
.end method

.method public static final native ParameterizedBrush_setSmoothingType(JLcom/myscript/atk/styluscore/ParameterizedBrush;I)V
.end method

.method public static final native ParameterizedBrush_setWidth(JLcom/myscript/atk/styluscore/ParameterizedBrush;F)V
.end method

.method public static final native ParameterizedBrush_smoothing(JLcom/myscript/atk/styluscore/ParameterizedBrush;)I
.end method

.method public static final native ParameterizedBrush_width(JLcom/myscript/atk/styluscore/ParameterizedBrush;)F
.end method

.method public static final native Path_addArrowHead(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)V
.end method

.method public static final native Path_addSampledArc__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;FFFFFF)V
.end method

.method public static final native Path_addSampledArc__SWIG_1(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;FFFFFI)V
.end method

.method public static final native Path_addSampledLine__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;F)V
.end method

.method public static final native Path_addSampledLine__SWIG_1(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;I)V
.end method

.method public static final native Path_boundingRect(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native Path_clear(JLcom/myscript/atk/styluscore/Path;)V
.end method

.method public static final native Path_clipped(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native Path_close(JLcom/myscript/atk/styluscore/Path;)V
.end method

.method public static final native Path_closingLength(JLcom/myscript/atk/styluscore/Path;)F
.end method

.method public static final native Path_convexHull(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native Path_elementAt(JLcom/myscript/atk/styluscore/Path;I)J
.end method

.method public static final native Path_elementCount(JLcom/myscript/atk/styluscore/Path;)I
.end method

.method public static final native Path_elements(JLcom/myscript/atk/styluscore/Path;II[F[F)V
.end method

.method public static final native Path_getCoarsePolyline(JLcom/myscript/atk/styluscore/Path;FFFI)J
.end method

.method public static final native Path_getFastPolylineOptimal(JLcom/myscript/atk/styluscore/Path;FF)J
.end method

.method public static final native Path_hashCode(JLcom/myscript/atk/styluscore/Path;)I
.end method

.method public static final native Path_intersections(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native Path_intersects(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Rect;)Z
.end method

.method public static final native Path_isClosed(JLcom/myscript/atk/styluscore/Path;)Z
.end method

.method public static final native Path_isEmpty(JLcom/myscript/atk/styluscore/Path;)Z
.end method

.method public static final native Path_lastElement(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native Path_length(JLcom/myscript/atk/styluscore/Path;)F
.end method

.method public static final native Path_lineTo__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;)V
.end method

.method public static final native Path_lineTo__SWIG_1(JLcom/myscript/atk/styluscore/Path;FF)V
.end method

.method public static final native Path_minDistance(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)F
.end method

.method public static final native Path_nativeEquals(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)Z
.end method

.method public static final native Path_notEquals(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)Z
.end method

.method public static final native Path_startAt__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;)V
.end method

.method public static final native Path_startAt__SWIG_1(JLcom/myscript/atk/styluscore/Path;FF)V
.end method

.method public static final native Path_stretch(JLcom/myscript/atk/styluscore/Path;F)J
.end method

.method public static final native Path_surrounds(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;)Z
.end method

.method public static final native PointPrimitive_SWIGUpcast(J)J
.end method

.method public static final native PointPrimitive_path__SWIG_0(JLcom/myscript/atk/styluscore/PointPrimitive;I)J
.end method

.method public static final native PointPrimitive_path__SWIG_1(JLcom/myscript/atk/styluscore/PointPrimitive;)J
.end method

.method public static final native PointPrimitive_point(JLcom/myscript/atk/styluscore/PointPrimitive;)J
.end method

.method public static final native Point_addAffect(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J
.end method

.method public static final native Point_almostEquals__SWIG_0(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;F)Z
.end method

.method public static final native Point_almostEquals__SWIG_1(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)Z
.end method

.method public static final native Point_angle(JLcom/myscript/atk/styluscore/Point;)F
.end method

.method public static final native Point_clear(JLcom/myscript/atk/styluscore/Point;)V
.end method

.method public static final native Point_hashCode(JLcom/myscript/atk/styluscore/Point;)I
.end method

.method public static final native Point_isNull(JLcom/myscript/atk/styluscore/Point;)Z
.end method

.method public static final native Point_middle(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J
.end method

.method public static final native Point_minusAffect(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J
.end method

.method public static final native Point_nativeEquals(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)Z
.end method

.method public static final native Point_norm(JLcom/myscript/atk/styluscore/Point;)F
.end method

.method public static final native Point_notEquals(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)Z
.end method

.method public static final native Point_rotated(JLcom/myscript/atk/styluscore/Point;F)J
.end method

.method public static final native Point_setX(JLcom/myscript/atk/styluscore/Point;F)V
.end method

.method public static final native Point_setY(JLcom/myscript/atk/styluscore/Point;F)V
.end method

.method public static final native Point_x(JLcom/myscript/atk/styluscore/Point;)F
.end method

.method public static final native Point_y(JLcom/myscript/atk/styluscore/Point;)F
.end method

.method public static final native Rect_adjusted(JLcom/myscript/atk/styluscore/Rect;FFFF)J
.end method

.method public static final native Rect_clear(JLcom/myscript/atk/styluscore/Rect;)V
.end method

.method public static final native Rect_contains(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z
.end method

.method public static final native Rect_getBottom(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getHeight(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getLeft(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getRight(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getTop(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getWidth(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getX(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_getY(JLcom/myscript/atk/styluscore/Rect;)F
.end method

.method public static final native Rect_hashCode(JLcom/myscript/atk/styluscore/Rect;)I
.end method

.method public static final native Rect_intersected(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native Rect_intersects(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z
.end method

.method public static final native Rect_isNull(JLcom/myscript/atk/styluscore/Rect;)Z
.end method

.method public static final native Rect_moveBottom(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_moveLeft(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_moveRight(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_moveTo(JLcom/myscript/atk/styluscore/Rect;FF)V
.end method

.method public static final native Rect_moveTop(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_nativeEquals(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z
.end method

.method public static final native Rect_notEquals(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z
.end method

.method public static final native Rect_setHeight(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_setWidth(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_setX(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_setY(JLcom/myscript/atk/styluscore/Rect;F)V
.end method

.method public static final native Rect_translate(JLcom/myscript/atk/styluscore/Rect;FF)V
.end method

.method public static final native Rect_united(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native SearchResult_getInputRange(JLcom/myscript/atk/styluscore/SearchResult;)J
.end method

.method public static final native SearchResult_getLabel(JLcom/myscript/atk/styluscore/SearchResult;)[B
.end method

.method public static final native SearchResult_getOccurrence(JLcom/myscript/atk/styluscore/SearchResult;)I
.end method

.method public static final native SearchResult_getScore(JLcom/myscript/atk/styluscore/SearchResult;)F
.end method

.method public static final native SearchResult_nativeEquals(JLcom/myscript/atk/styluscore/SearchResult;JLcom/myscript/atk/styluscore/SearchResult;)Z
.end method

.method public static final native SearchResult_notEquals(JLcom/myscript/atk/styluscore/SearchResult;JLcom/myscript/atk/styluscore/SearchResult;)Z
.end method

.method public static final native SearchResult_setInputRange(JLcom/myscript/atk/styluscore/SearchResult;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native SearchResult_setLabel(JLcom/myscript/atk/styluscore/SearchResult;[B)V
.end method

.method public static final native SearchResult_setOccurrence(JLcom/myscript/atk/styluscore/SearchResult;I)V
.end method

.method public static final native SearchResult_setScore(JLcom/myscript/atk/styluscore/SearchResult;F)V
.end method

.method public static final native Segment_appendAt(JLcom/myscript/atk/styluscore/Segment;IJLcom/myscript/atk/styluscore/Candidate;)V
.end method

.method public static final native Segment_append__SWIG_0(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ItemRange;)V
.end method

.method public static final native Segment_append__SWIG_1(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native Segment_append__SWIG_2(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Candidate;)V
.end method

.method public static final native Segment_baseline(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_baselineSkew(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_baselineSkewUndefined_get()F
.end method

.method public static final native Segment_baselineUndefined_get()F
.end method

.method public static final native Segment_beautified(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native Segment_begin(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_bottomBound(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_candidates(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_contains(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkLocation;)Z
.end method

.method public static final native Segment_duration(JLcom/myscript/atk/styluscore/Segment;)I
.end method

.method public static final native Segment_end(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_fontified(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ListRect;FF)J
.end method

.method public static final native Segment_fromCandidate(JLcom/myscript/atk/styluscore/Candidate;)J
.end method

.method public static final native Segment_fromLabel__SWIG_0([BII)J
.end method

.method public static final native Segment_fromLabel__SWIG_1([BI)J
.end method

.method public static final native Segment_fromLabel__SWIG_2([B)J
.end method

.method public static native Segment_getUserParams(JLcom/myscript/atk/styluscore/Segment;I)I
.end method

.method public static final native Segment_grafted(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;I)J
.end method

.method public static final native Segment_hashCode(JLcom/myscript/atk/styluscore/Segment;)I
.end method

.method public static final native Segment_inkRange(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_is(JLcom/myscript/atk/styluscore/Segment;I)Z
.end method

.method public static final native Segment_isEmpty(JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_isLower(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_isMirrored(JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_items(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_keepOnlySelectedCandidate(JLcom/myscript/atk/styluscore/Segment;)V
.end method

.method public static final native Segment_leftBound(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_leftToRightBarycenterOrder(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_mapped(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native Segment_midlineShift(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_midlineShiftUndefined_get()F
.end method

.method public static final native Segment_mirrored(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_nativeEquals(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_normalized__SWIG_0(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;Z)J
.end method

.method public static final native Segment_normalized__SWIG_1(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native Segment_normalized__SWIG_2(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_notEquals(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_promoted(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_rebased(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native Segment_reorder(JLcom/myscript/atk/styluscore/Segment;I)J
.end method

.method public static final native Segment_replaceAt(JLcom/myscript/atk/styluscore/Segment;IJLcom/myscript/atk/styluscore/Candidate;)V
.end method

.method public static final native Segment_rightBound(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_rightToLeftBarycenterOrder(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_segmentsOfType__SWIG_0(JLcom/myscript/atk/styluscore/Segment;I)J
.end method

.method public static final native Segment_segmentsOfType__SWIG_1(JLcom/myscript/atk/styluscore/Segment;II)J
.end method

.method public static final native Segment_segmentsOfType__SWIG_2(JLcom/myscript/atk/styluscore/Segment;III)J
.end method

.method public static final native Segment_select(JLcom/myscript/atk/styluscore/Segment;I)Z
.end method

.method public static final native Segment_selectLastCandidate(JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_selectedCandidate(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_selectedIndex(JLcom/myscript/atk/styluscore/Segment;)I
.end method

.method public static final native Segment_setBaseline(JLcom/myscript/atk/styluscore/Segment;F)V
.end method

.method public static final native Segment_setBaselineSkew(JLcom/myscript/atk/styluscore/Segment;F)V
.end method

.method public static final native Segment_setInkRange(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;)V
.end method

.method public static final native Segment_setMidlineShift(JLcom/myscript/atk/styluscore/Segment;F)V
.end method

.method public static final native Segment_simplified(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/ListInkItem;JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native Segment_split(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkRange;JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)V
.end method

.method public static final native Segment_strokeCount(JLcom/myscript/atk/styluscore/Segment;)I
.end method

.method public static final native Segment_timeShifted(JLcom/myscript/atk/styluscore/Segment;J)J
.end method

.method public static final native Segment_timeStamp(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native Segment_timeStampOrder(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/Segment;)Z
.end method

.method public static final native Segment_topBound(JLcom/myscript/atk/styluscore/Segment;)F
.end method

.method public static final native Segment_updateUserParametersListener(JLcom/myscript/atk/styluscore/Segment;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)J
.end method

.method public static final native StringUtils_graphemes([B)J
.end method

.method public static final native StringUtils_graphemesPositions([B)J
.end method

.method public static final native Stroke_SWIGUpcast(J)J
.end method

.method public static final native Stroke_itemID(JLcom/myscript/atk/styluscore/Stroke;)J
.end method

.method public static final native Stroke_path__SWIG_0(JLcom/myscript/atk/styluscore/Stroke;I)J
.end method

.method public static final native Stroke_path__SWIG_1(JLcom/myscript/atk/styluscore/Stroke;)J
.end method

.method public static final native Tool_configureRenderer(JLcom/myscript/atk/styluscore/Tool;)V
.end method

.method public static final native Tool_penAbort(JLcom/myscript/atk/styluscore/Tool;)V
.end method

.method public static final native Tool_penDown(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/pt3;)V
.end method

.method public static final native Tool_penMove(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/pt3;)V
.end method

.method public static final native Tool_penUp(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/pt3;)V
.end method

.method public static final native Tool_setColor(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/Color;)V
.end method

.method public static final native Tool_setPage(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/Page;)V
.end method

.method public static final native Tool_setParameterizedBrush(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V
.end method

.method public static final native Tool_setSmoothingType(JLcom/myscript/atk/styluscore/Tool;I)V
.end method

.method public static final native Tool_setWidth(JLcom/myscript/atk/styluscore/Tool;F)V
.end method

.method public static final native Tool_type(JLcom/myscript/atk/styluscore/Tool;)I
.end method

.method public static final native Transform_applied(JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/Transform;)J
.end method

.method public static final native Transform_getScaleRatio(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_getXScale(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_getXShearing(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_getXTranslation(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_getYScale(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_getYShearing(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_getYTranslation(JLcom/myscript/atk/styluscore/Transform;)F
.end method

.method public static final native Transform_inverted(JLcom/myscript/atk/styluscore/Transform;)J
.end method

.method public static final native Transform_isIdentity(JLcom/myscript/atk/styluscore/Transform;)Z
.end method

.method public static final native Transform_isInvertible(JLcom/myscript/atk/styluscore/Transform;)Z
.end method

.method public static final native Transform_map(JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native Transform_rotate(JLcom/myscript/atk/styluscore/Transform;F)J
.end method

.method public static final native Transform_scale(JLcom/myscript/atk/styluscore/Transform;FF)J
.end method

.method public static final native Transform_setIdentity(JLcom/myscript/atk/styluscore/Transform;)V
.end method

.method public static final native Transform_shear(JLcom/myscript/atk/styluscore/Transform;FF)J
.end method

.method public static final native Transform_translate(JLcom/myscript/atk/styluscore/Transform;FF)J
.end method

.method public static final native VectorByte_add(JLcom/myscript/atk/styluscore/VectorByte;S)V
.end method

.method public static final native VectorByte_capacity(JLcom/myscript/atk/styluscore/VectorByte;)J
.end method

.method public static final native VectorByte_clear(JLcom/myscript/atk/styluscore/VectorByte;)V
.end method

.method public static final native VectorByte_get(JLcom/myscript/atk/styluscore/VectorByte;I)S
.end method

.method public static final native VectorByte_isEmpty(JLcom/myscript/atk/styluscore/VectorByte;)Z
.end method

.method public static final native VectorByte_reserve(JLcom/myscript/atk/styluscore/VectorByte;J)V
.end method

.method public static final native VectorByte_set(JLcom/myscript/atk/styluscore/VectorByte;IS)V
.end method

.method public static final native VectorByte_size(JLcom/myscript/atk/styluscore/VectorByte;)J
.end method

.method public static final native VectorChar_add(JLcom/myscript/atk/styluscore/VectorChar;C)V
.end method

.method public static final native VectorChar_capacity(JLcom/myscript/atk/styluscore/VectorChar;)J
.end method

.method public static final native VectorChar_clear(JLcom/myscript/atk/styluscore/VectorChar;)V
.end method

.method public static final native VectorChar_get(JLcom/myscript/atk/styluscore/VectorChar;I)C
.end method

.method public static final native VectorChar_isEmpty(JLcom/myscript/atk/styluscore/VectorChar;)Z
.end method

.method public static final native VectorChar_reserve(JLcom/myscript/atk/styluscore/VectorChar;J)V
.end method

.method public static final native VectorChar_set(JLcom/myscript/atk/styluscore/VectorChar;IC)V
.end method

.method public static final native VectorChar_size(JLcom/myscript/atk/styluscore/VectorChar;)J
.end method

.method public static final native VoString_add(JLcom/myscript/atk/styluscore/VoString;[B)[B
.end method

.method public static final native VoString_addAffect(JLcom/myscript/atk/styluscore/VoString;[B)J
.end method

.method public static final native VoString_append(JLcom/myscript/atk/styluscore/VoString;[B)J
.end method

.method public static final native VoString_at(JLcom/myscript/atk/styluscore/VoString;I)J
.end method

.method public static final native VoString_byteCount(JLcom/myscript/atk/styluscore/VoString;)I
.end method

.method public static final native VoString_chop(JLcom/myscript/atk/styluscore/VoString;I)V
.end method

.method public static final native VoString_clear(JLcom/myscript/atk/styluscore/VoString;)V
.end method

.method public static final native VoString_containsOneCharOf(JLcom/myscript/atk/styluscore/VoString;[B)Z
.end method

.method public static final native VoString_contains__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[B)Z
.end method

.method public static final native VoString_contains__SWIG_1(JLcom/myscript/atk/styluscore/VoString;I)Z
.end method

.method public static final native VoString_count(JLcom/myscript/atk/styluscore/VoString;JLcom/myscript/atk/styluscore/Char;)I
.end method

.method public static final native VoString_findBytePos__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[BI)I
.end method

.method public static final native VoString_findBytePos__SWIG_1(JLcom/myscript/atk/styluscore/VoString;[B)I
.end method

.method public static final native VoString_firstChar(JLcom/myscript/atk/styluscore/VoString;)J
.end method

.method public static final native VoString_hashCode(JLcom/myscript/atk/styluscore/VoString;)I
.end method

.method public static final native VoString_isEmpty(JLcom/myscript/atk/styluscore/VoString;)Z
.end method

.method public static final native VoString_isUnicodeChar(JLcom/myscript/atk/styluscore/VoString;J)Z
.end method

.method public static final native VoString_lastChar(JLcom/myscript/atk/styluscore/VoString;)J
.end method

.method public static final native VoString_length(JLcom/myscript/atk/styluscore/VoString;)I
.end method

.method public static final native VoString_mid__SWIG_0(JLcom/myscript/atk/styluscore/VoString;II)[B
.end method

.method public static final native VoString_mid__SWIG_1(JLcom/myscript/atk/styluscore/VoString;I)[B
.end method

.method public static final native VoString_nativeEquals(JLcom/myscript/atk/styluscore/VoString;[B)Z
.end method

.method public static final native VoString_notEquals(JLcom/myscript/atk/styluscore/VoString;[B)Z
.end method

.method public static final native VoString_number__SWIG_0(DCI)[B
.end method

.method public static final native VoString_number__SWIG_1(DC)[B
.end method

.method public static final native VoString_number__SWIG_2(D)[B
.end method

.method public static final native VoString_remapCircledCharacters(JLcom/myscript/atk/styluscore/VoString;)V
.end method

.method public static final native VoString_remove__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[B)J
.end method

.method public static final native VoString_remove__SWIG_1(JLcom/myscript/atk/styluscore/VoString;II)J
.end method

.method public static final native VoString_repeated(JLcom/myscript/atk/styluscore/VoString;I)[B
.end method

.method public static final native VoString_replace__SWIG_0(JLcom/myscript/atk/styluscore/VoString;[B[B)J
.end method

.method public static final native VoString_replace__SWIG_1(JLcom/myscript/atk/styluscore/VoString;II[B)J
.end method

.method public static final native VoString_split(JLcom/myscript/atk/styluscore/VoString;C)J
.end method

.method public static final native VoString_toDouble(JLcom/myscript/atk/styluscore/VoString;)D
.end method

.method public static final native VoString_toInt(JLcom/myscript/atk/styluscore/VoString;)I
.end method

.method public static final native VoString_toLower(JLcom/myscript/atk/styluscore/VoString;)[B
.end method

.method public static final native VoString_toUpper(JLcom/myscript/atk/styluscore/VoString;)[B
.end method

.method public static final native VoTimeStamp_elapsed__SWIG_0(JLcom/myscript/atk/styluscore/VoTimeStamp;I)J
.end method

.method public static final native VoTimeStamp_elapsed__SWIG_1(JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native VoTimeStamp_hashCode(JLcom/myscript/atk/styluscore/VoTimeStamp;)I
.end method

.method public static final native VoTimeStamp_isGreater(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_isGreaterOrEqual(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_isLower(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_isLowerOrEqual(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_milliseconds(JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native VoTimeStamp_millisecondsTo(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native VoTimeStamp_nativeEquals(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_notEquals(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_shifted(JLcom/myscript/atk/styluscore/VoTimeStamp;J)J
.end method

.method public static final native add(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J
.end method

.method public static native createCertificateEngine([BI)J
.end method

.method public static native createRuntimeEngine([BILcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;)J
.end method

.method public static final native delete_ArcPrimitive(J)V
.end method

.method public static final native delete_Archive(J)V
.end method

.method public static final native delete_Brush(J)V
.end method

.method public static final native delete_Brushes(J)V
.end method

.method public static final native delete_CalcInputMethod(J)V
.end method

.method public static final native delete_Candidate(J)V
.end method

.method public static final native delete_Char(J)V
.end method

.method public static final native delete_Color(J)V
.end method

.method public static final native delete_Component(J)V
.end method

.method public static final native delete_ComponentListener(J)V
.end method

.method public static final native delete_ComponentRendererDelegate(J)V
.end method

.method public static final native delete_ConstraintInfo(J)V
.end method

.method public static final native delete_CursiveInputMethod(J)V
.end method

.method public static final native delete_DMSToolkit(J)V
.end method

.method public static final native delete_Document(J)V
.end method

.method public static final native delete_DocumentListener(J)V
.end method

.method public static final native delete_Formatter(J)V
.end method

.method public static final native delete_GeometryComponent(J)V
.end method

.method public static final native delete_GeometryComponentListener(J)V
.end method

.method public static final native delete_GeometryRendererDelegate(J)V
.end method

.method public static final native delete_GeometryUserParams(J)V
.end method

.method public static final native delete_GeometryUserParamsListener(J)V
.end method

.method public static final native delete_IInkStorable(J)V
.end method

.method public static final native delete_IRendererDelegate(J)V
.end method

.method public static final native delete_InkDebug(J)V
.end method

.method public static final native delete_InkField(J)V
.end method

.method public static final native delete_InkItem(J)V
.end method

.method public static final native delete_InkItemUserParamsListener(J)V
.end method

.method public static final native delete_InkItemWidthColorUserParams(J)V
.end method

.method public static final native delete_InkLayout(J)V
.end method

.method public static final native delete_InkLocation(J)V
.end method

.method public static final native delete_InkRange(J)V
.end method

.method public static final native delete_InkSearch(J)V
.end method

.method public static final native delete_InkSearchListener(J)V
.end method

.method public static final native delete_InkTag(J)V
.end method

.method public static final native delete_InputMethod(J)V
.end method

.method public static final native delete_InputMethodConfig(J)V
.end method

.method public static final native delete_InputMethodListener(J)V
.end method

.method public static final native delete_IntegerRange(J)V
.end method

.method public static final native delete_IsolatedInputMethod(J)V
.end method

.method public static final native delete_ItemInfo(J)V
.end method

.method public static final native delete_ItemLength(J)V
.end method

.method public static final native delete_ItemRange(J)V
.end method

.method public static final native delete_ItfReader(J)V
.end method

.method public static final native delete_ItfWriter(J)V
.end method

.method public static final native delete_LinePrimitive(J)V
.end method

.method public static final native delete_ListArchive(J)V
.end method

.method public static final native delete_ListBrush(J)V
.end method

.method public static final native delete_ListCandidate(J)V
.end method

.method public static final native delete_ListChar(J)V
.end method

.method public static final native delete_ListColor(J)V
.end method

.method public static final native delete_ListFloat(J)V
.end method

.method public static final native delete_ListInkField(J)V
.end method

.method public static final native delete_ListInkItem(J)V
.end method

.method public static final native delete_ListInkLocation(J)V
.end method

.method public static final native delete_ListInkRange(J)V
.end method

.method public static final native delete_ListInkTag(J)V
.end method

.method public static final native delete_ListInt(J)V
.end method

.method public static final native delete_ListIntegerRange(J)V
.end method

.method public static final native delete_ListItemRange(J)V
.end method

.method public static final native delete_ListLong(J)V
.end method

.method public static final native delete_ListPath(J)V
.end method

.method public static final native delete_ListPoint(J)V
.end method

.method public static final native delete_ListRect(J)V
.end method

.method public static final native delete_ListSearchResult(J)V
.end method

.method public static final native delete_ListSegment(J)V
.end method

.method public static final native delete_ListString(J)V
.end method

.method public static final native delete_ListUnicodeDb(J)V
.end method

.method public static final native delete_Log(J)V
.end method

.method public static final native delete_Page(J)V
.end method

.method public static final native delete_ParameterizedBrush(J)V
.end method

.method public static final native delete_Path(J)V
.end method

.method public static final native delete_Point(J)V
.end method

.method public static final native delete_PointPrimitive(J)V
.end method

.method public static final native delete_Rect(J)V
.end method

.method public static final native delete_SearchResult(J)V
.end method

.method public static final native delete_Segment(J)V
.end method

.method public static final native delete_StringUtils(J)V
.end method

.method public static final native delete_Stroke(J)V
.end method

.method public static final native delete_Tool(J)V
.end method

.method public static final native delete_Transform(J)V
.end method

.method public static final native delete_VectorByte(J)V
.end method

.method public static final native delete_VectorChar(J)V
.end method

.method public static final native delete_VoString(J)V
.end method

.method public static final native delete_VoTimeStamp(J)V
.end method

.method public static final native delete_pt3(J)V
.end method

.method public static native isDynamicProtection([B)Z
.end method

.method public static final native logFmt(ILjava/lang/String;)V
.end method

.method public static final native minus(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J
.end method

.method public static final native new_ArcPrimitive__SWIG_0(FFFFFFF)J
.end method

.method public static final native new_ArcPrimitive__SWIG_1(JLcom/myscript/atk/styluscore/ArcPrimitive;)J
.end method

.method public static final native new_Archive__SWIG_0(Z[B)J
.end method

.method public static final native new_Archive__SWIG_1(Z[BI)J
.end method

.method public static final native new_Archive__SWIG_2(JLcom/myscript/atk/styluscore/Archive;)J
.end method

.method public static final native new_Archive_bytes([B)J
.end method

.method public static final native new_Archive_bytes_version([BJ)J
.end method

.method public static final native new_Archive_empty()J
.end method

.method public static final native new_Archive_version(J)J
.end method

.method public static final native new_Brush__SWIG_0()J
.end method

.method public static final native new_Brush__SWIG_1(JLcom/myscript/atk/styluscore/Brush;)J
.end method

.method public static final native new_Brushes__SWIG_0()J
.end method

.method public static final native new_Brushes__SWIG_1(JLcom/myscript/atk/styluscore/Brushes;)J
.end method

.method public static final native new_CalcInputMethod__SWIG_0()J
.end method

.method public static final native new_CalcInputMethod__SWIG_1([B)J
.end method

.method public static final native new_CalcInputMethod__SWIG_2(JLcom/myscript/atk/styluscore/CalcInputMethod;)J
.end method

.method public static final native new_Candidate__SWIG_0()J
.end method

.method public static final native new_Candidate__SWIG_1(JLcom/myscript/atk/styluscore/Candidate;)J
.end method

.method public static final native new_Char__SWIG_0()J
.end method

.method public static final native new_Char__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_Char__SWIG_2(C)J
.end method

.method public static final native new_Char__SWIG_3(S)J
.end method

.method public static final native new_Char__SWIG_4(I)J
.end method

.method public static final native new_Char__SWIG_5(J)J
.end method

.method public static final native new_Char__SWIG_6(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native new_Color__SWIG_0()J
.end method

.method public static final native new_Color__SWIG_1(JJJJ)J
.end method

.method public static final native new_Color__SWIG_2(J)J
.end method

.method public static final native new_Color__SWIG_3(JLcom/myscript/atk/styluscore/Color;)J
.end method

.method public static final native new_Component(JLcom/myscript/atk/styluscore/Component;)J
.end method

.method public static final native new_ComponentListener__SWIG_0()J
.end method

.method public static final native new_ComponentListener__SWIG_1(JLcom/myscript/atk/styluscore/ComponentListener;)J
.end method

.method public static final native new_ComponentRendererDelegate__SWIG_0()J
.end method

.method public static final native new_ComponentRendererDelegate__SWIG_1(JLcom/myscript/atk/styluscore/ComponentRendererDelegate;)J
.end method

.method public static final native new_ConstraintInfo__SWIG_0()J
.end method

.method public static final native new_ConstraintInfo__SWIG_1(JLcom/myscript/atk/styluscore/ConstraintInfo;)J
.end method

.method public static final native new_CursiveInputMethod__SWIG_0()J
.end method

.method public static final native new_CursiveInputMethod__SWIG_1([B)J
.end method

.method public static final native new_CursiveInputMethod__SWIG_2(JLcom/myscript/atk/styluscore/CursiveInputMethod;)J
.end method

.method public static final native new_DMSToolkit__SWIG_0()J
.end method

.method public static final native new_DMSToolkit__SWIG_1(JLcom/myscript/atk/styluscore/DMSToolkit;)J
.end method

.method public static final native new_Document__SWIG_0([B)J
.end method

.method public static final native new_Document__SWIG_1()J
.end method

.method public static final native new_Document__SWIG_2(JLcom/myscript/atk/styluscore/Document;)J
.end method

.method public static final native new_Formatter__SWIG_0()J
.end method

.method public static final native new_Formatter__SWIG_1(JLcom/myscript/atk/styluscore/Formatter;)J
.end method

.method public static final native new_GeometryComponentListener__SWIG_0()J
.end method

.method public static final native new_GeometryComponentListener__SWIG_1(JLcom/myscript/atk/styluscore/GeometryComponentListener;)J
.end method

.method public static final native new_GeometryComponent__SWIG_0()J
.end method

.method public static final native new_GeometryComponent__SWIG_1(JLcom/myscript/atk/styluscore/GeometryComponent;)J
.end method

.method public static final native new_GeometryRendererDelegate__SWIG_0()J
.end method

.method public static final native new_GeometryRendererDelegate__SWIG_1(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)J
.end method

.method public static final native new_GeometryUserParamsListener__SWIG_0()J
.end method

.method public static final native new_GeometryUserParamsListener__SWIG_1(JLcom/myscript/atk/styluscore/GeometryUserParamsListener;)J
.end method

.method public static final native new_GeometryUserParams__SWIG_0()J
.end method

.method public static final native new_GeometryUserParams__SWIG_1(JLcom/myscript/atk/styluscore/ParameterizedBrush;J)J
.end method

.method public static final native new_GeometryUserParams__SWIG_2(JLcom/myscript/atk/styluscore/GeometryUserParams;J)J
.end method

.method public static final native new_GeometryUserParams__SWIG_3(JLcom/myscript/atk/styluscore/GeometryUserParams;)J
.end method

.method public static final native new_IRendererDelegate__SWIG_0()J
.end method

.method public static final native new_IRendererDelegate__SWIG_1(JLcom/myscript/atk/styluscore/IRendererDelegate;)J
.end method

.method public static final native new_InkDebug__SWIG_0(I)J
.end method

.method public static final native new_InkDebug__SWIG_1(JLcom/myscript/atk/styluscore/InkDebug;)J
.end method

.method public static final native new_InkField__SWIG_0()J
.end method

.method public static final native new_InkField__SWIG_1(JLcom/myscript/atk/styluscore/InkField;)J
.end method

.method public static final native new_InkItemUserParamsListener()J
.end method

.method public static final native new_InkItemWidthColorUserParams__SWIG_0()J
.end method

.method public static final native new_InkItemWidthColorUserParams__SWIG_1(IJ)J
.end method

.method public static final native new_InkItemWidthColorUserParams__SWIG_2(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)J
.end method

.method public static final native new_InkItem__SWIG_0()J
.end method

.method public static final native new_InkItem__SWIG_1(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native new_InkLayout__SWIG_0()J
.end method

.method public static final native new_InkLayout__SWIG_1(JLcom/myscript/atk/styluscore/InkLayout;)J
.end method

.method public static final native new_InkLocation__SWIG_0()J
.end method

.method public static final native new_InkLocation__SWIG_1(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native new_InkLocation__SWIG_2(JLcom/myscript/atk/styluscore/InkLocation;)J
.end method

.method public static final native new_InkRange__SWIG_0()J
.end method

.method public static final native new_InkRange__SWIG_1(JLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native new_InkRange__SWIG_2(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native new_InkRange__SWIG_3(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native new_InkRange__SWIG_4(JLcom/myscript/atk/styluscore/ListItemRange;)J
.end method

.method public static final native new_InkSearchListener__SWIG_0()J
.end method

.method public static final native new_InkSearchListener__SWIG_1(JLcom/myscript/atk/styluscore/InkSearchListener;)J
.end method

.method public static final native new_InkSearch__SWIG_0()J
.end method

.method public static final native new_InkSearch__SWIG_1(JLcom/myscript/atk/styluscore/InkSearch;)J
.end method

.method public static final native new_InkTag__SWIG_0()J
.end method

.method public static final native new_InkTag__SWIG_1(IJLcom/myscript/atk/styluscore/InkRange;)J
.end method

.method public static final native new_InkTag__SWIG_2(JLcom/myscript/atk/styluscore/InkTag;)J
.end method

.method public static final native new_InputMethodConfig__SWIG_0()J
.end method

.method public static final native new_InputMethodConfig__SWIG_1(JLcom/myscript/atk/styluscore/InputMethodConfig;)J
.end method

.method public static final native new_InputMethodListener__SWIG_0()J
.end method

.method public static final native new_InputMethodListener__SWIG_1(JLcom/myscript/atk/styluscore/InputMethodListener;)J
.end method

.method public static final native new_InputMethod__SWIG_0()J
.end method

.method public static final native new_InputMethod__SWIG_1([B)J
.end method

.method public static final native new_InputMethod__SWIG_2(JLcom/myscript/atk/styluscore/InputMethod;)J
.end method

.method public static final native new_IntegerRange__SWIG_0()J
.end method

.method public static final native new_IntegerRange__SWIG_1(II)J
.end method

.method public static final native new_IntegerRange__SWIG_2(JLcom/myscript/atk/styluscore/IntegerRange;)J
.end method

.method public static final native new_IsolatedInputMethod__SWIG_0()J
.end method

.method public static final native new_IsolatedInputMethod__SWIG_1([B)J
.end method

.method public static final native new_IsolatedInputMethod__SWIG_2(JLcom/myscript/atk/styluscore/IsolatedInputMethod;)J
.end method

.method public static final native new_ItemInfo__SWIG_0()J
.end method

.method public static final native new_ItemInfo__SWIG_1([BZ)J
.end method

.method public static final native new_ItemInfo__SWIG_2(JLcom/myscript/atk/styluscore/ItemInfo;)J
.end method

.method public static final native new_ItemLength__SWIG_0()J
.end method

.method public static final native new_ItemLength__SWIG_1(F[B)J
.end method

.method public static final native new_ItemLength__SWIG_2(JLcom/myscript/atk/styluscore/ItemLength;)J
.end method

.method public static final native new_ItemRange__SWIG_0()J
.end method

.method public static final native new_ItemRange__SWIG_1(JLcom/myscript/atk/styluscore/ItemRange;)J
.end method

.method public static final native new_ItemRange__SWIG_2(JLcom/myscript/atk/styluscore/InkItem;)J
.end method

.method public static final native new_ItemRange__SWIG_3(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/IntegerRange;)J
.end method

.method public static final native new_ItemRange__SWIG_4(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/ListIntegerRange;)J
.end method

.method public static final native new_ItfReader__SWIG_0([B)J
.end method

.method public static final native new_ItfReader__SWIG_1(JLcom/myscript/atk/styluscore/ItfReader;)J
.end method

.method public static final native new_ItfWriter__SWIG_0()J
.end method

.method public static final native new_ItfWriter__SWIG_1(JLcom/myscript/atk/styluscore/ItfWriter;)J
.end method

.method public static final native new_LinePrimitive__SWIG_0(FFZFFZ)J
.end method

.method public static final native new_LinePrimitive__SWIG_1(JLcom/myscript/atk/styluscore/LinePrimitive;)J
.end method

.method public static final native new_ListArchive__SWIG_0()J
.end method

.method public static final native new_ListArchive__SWIG_1(JLcom/myscript/atk/styluscore/ListArchive;)J
.end method

.method public static final native new_ListBrush__SWIG_0()J
.end method

.method public static final native new_ListBrush__SWIG_1(JLcom/myscript/atk/styluscore/ListBrush;)J
.end method

.method public static final native new_ListCandidate__SWIG_0()J
.end method

.method public static final native new_ListCandidate__SWIG_1(JLcom/myscript/atk/styluscore/ListCandidate;)J
.end method

.method public static final native new_ListChar__SWIG_0()J
.end method

.method public static final native new_ListChar__SWIG_1(JLcom/myscript/atk/styluscore/ListChar;)J
.end method

.method public static final native new_ListColor__SWIG_0()J
.end method

.method public static final native new_ListColor__SWIG_1(JLcom/myscript/atk/styluscore/ListColor;)J
.end method

.method public static final native new_ListFloat__SWIG_0()J
.end method

.method public static final native new_ListFloat__SWIG_1(JLcom/myscript/atk/styluscore/ListFloat;)J
.end method

.method public static final native new_ListInkField__SWIG_0()J
.end method

.method public static final native new_ListInkField__SWIG_1(JLcom/myscript/atk/styluscore/ListInkField;)J
.end method

.method public static final native new_ListInkItem__SWIG_0()J
.end method

.method public static final native new_ListInkItem__SWIG_1(JLcom/myscript/atk/styluscore/ListInkItem;)J
.end method

.method public static final native new_ListInkLocation__SWIG_0()J
.end method

.method public static final native new_ListInkLocation__SWIG_1(JLcom/myscript/atk/styluscore/ListInkLocation;)J
.end method

.method public static final native new_ListInkRange__SWIG_0()J
.end method

.method public static final native new_ListInkRange__SWIG_1(JLcom/myscript/atk/styluscore/ListInkRange;)J
.end method

.method public static final native new_ListInkTag__SWIG_0()J
.end method

.method public static final native new_ListInkTag__SWIG_1(JLcom/myscript/atk/styluscore/ListInkTag;)J
.end method

.method public static final native new_ListInt__SWIG_0()J
.end method

.method public static final native new_ListInt__SWIG_1(JLcom/myscript/atk/styluscore/ListInt;)J
.end method

.method public static final native new_ListIntegerRange__SWIG_0()J
.end method

.method public static final native new_ListIntegerRange__SWIG_1(JLcom/myscript/atk/styluscore/ListIntegerRange;)J
.end method

.method public static final native new_ListItemRange__SWIG_0()J
.end method

.method public static final native new_ListItemRange__SWIG_1(JLcom/myscript/atk/styluscore/ListItemRange;)J
.end method

.method public static final native new_ListLong__SWIG_0()J
.end method

.method public static final native new_ListLong__SWIG_1(JLcom/myscript/atk/styluscore/ListLong;)J
.end method

.method public static final native new_ListPath__SWIG_0()J
.end method

.method public static final native new_ListPath__SWIG_1(JLcom/myscript/atk/styluscore/ListPath;)J
.end method

.method public static final native new_ListPoint__SWIG_0()J
.end method

.method public static final native new_ListPoint__SWIG_1(JLcom/myscript/atk/styluscore/ListPoint;)J
.end method

.method public static final native new_ListRect__SWIG_0()J
.end method

.method public static final native new_ListRect__SWIG_1(JLcom/myscript/atk/styluscore/ListRect;)J
.end method

.method public static final native new_ListSearchResult__SWIG_0()J
.end method

.method public static final native new_ListSearchResult__SWIG_1(JLcom/myscript/atk/styluscore/ListSearchResult;)J
.end method

.method public static final native new_ListSegment__SWIG_0()J
.end method

.method public static final native new_ListSegment__SWIG_1(JLcom/myscript/atk/styluscore/ListSegment;)J
.end method

.method public static final native new_ListString__SWIG_0()J
.end method

.method public static final native new_ListString__SWIG_1(JLcom/myscript/atk/styluscore/ListString;)J
.end method

.method public static final native new_ListUnicodeDb__SWIG_0()J
.end method

.method public static final native new_ListUnicodeDb__SWIG_1(JLcom/myscript/atk/styluscore/ListUnicodeDb;)J
.end method

.method public static final native new_Log__SWIG_0(I)J
.end method

.method public static final native new_Log__SWIG_1(JLcom/myscript/atk/styluscore/Log;)J
.end method

.method public static final native new_Page__SWIG_0(JLcom/myscript/atk/styluscore/Document;I)J
.end method

.method public static final native new_Page__SWIG_1()J
.end method

.method public static final native new_Page__SWIG_2(JLcom/myscript/atk/styluscore/Page;)J
.end method

.method public static final native new_ParameterizedBrush__SWIG_0()J
.end method

.method public static final native new_ParameterizedBrush__SWIG_1(JLcom/myscript/atk/styluscore/Brush;)J
.end method

.method public static final native new_ParameterizedBrush__SWIG_2(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J
.end method

.method public static final native new_Path__SWIG_0()J
.end method

.method public static final native new_Path__SWIG_1(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native new_PointPrimitive__SWIG_0(FF)J
.end method

.method public static final native new_PointPrimitive__SWIG_1(JLcom/myscript/atk/styluscore/PointPrimitive;)J
.end method

.method public static final native new_Point__SWIG_0()J
.end method

.method public static final native new_Point__SWIG_1(FF)J
.end method

.method public static final native new_Point__SWIG_2(JLcom/myscript/atk/styluscore/Point;)J
.end method

.method public static final native new_Rect__SWIG_0()J
.end method

.method public static final native new_Rect__SWIG_1(FFFF)J
.end method

.method public static final native new_Rect__SWIG_2(JLcom/myscript/atk/styluscore/Rect;)J
.end method

.method public static final native new_SearchResult__SWIG_0()J
.end method

.method public static final native new_SearchResult__SWIG_1(JLcom/myscript/atk/styluscore/SearchResult;)J
.end method

.method public static final native new_Segment__SWIG_0()J
.end method

.method public static final native new_Segment__SWIG_1(JLcom/myscript/atk/styluscore/Segment;)J
.end method

.method public static final native new_StringUtils__SWIG_0()J
.end method

.method public static final native new_StringUtils__SWIG_1(JLcom/myscript/atk/styluscore/StringUtils;)J
.end method

.method public static final native new_Stroke__SWIG_0(JLcom/myscript/atk/styluscore/Path;F)J
.end method

.method public static final native new_Stroke__SWIG_1(JLcom/myscript/atk/styluscore/Path;)J
.end method

.method public static final native new_Stroke__SWIG_2(JLcom/myscript/atk/styluscore/Stroke;)J
.end method

.method public static final native new_Transform__SWIG_0()J
.end method

.method public static final native new_Transform__SWIG_1(FFFF)J
.end method

.method public static final native new_Transform__SWIG_2(FFFFFF)J
.end method

.method public static final native new_Transform__SWIG_3(JLcom/myscript/atk/styluscore/Transform;)J
.end method

.method public static final native new_VectorByte__SWIG_0()J
.end method

.method public static final native new_VectorByte__SWIG_1(J)J
.end method

.method public static final native new_VectorByte__SWIG_2(JLcom/myscript/atk/styluscore/VectorByte;)J
.end method

.method public static final native new_VectorChar__SWIG_0()J
.end method

.method public static final native new_VectorChar__SWIG_1(J)J
.end method

.method public static final native new_VectorChar__SWIG_2(JLcom/myscript/atk/styluscore/VectorChar;)J
.end method

.method public static final native new_VoString__SWIG_0()J
.end method

.method public static final native new_VoString__SWIG_1(C)J
.end method

.method public static final native new_VoString__SWIG_2(JLcom/myscript/atk/styluscore/Char;)J
.end method

.method public static final native new_VoString__SWIG_3([B)J
.end method

.method public static final native new_VoTimeStamp__SWIG_0(I)J
.end method

.method public static final native new_VoTimeStamp__SWIG_1()J
.end method

.method public static final native new_VoTimeStamp__SWIG_2(J)J
.end method

.method public static final native new_VoTimeStamp__SWIG_3(JLcom/myscript/atk/styluscore/VoTimeStamp;)J
.end method

.method public static final native new_pt3__SWIG_0()J
.end method

.method public static final native new_pt3__SWIG_1(JLcom/myscript/atk/styluscore/pt3;)J
.end method

.method public static final native pt3_w_get(JLcom/myscript/atk/styluscore/pt3;)F
.end method

.method public static final native pt3_w_set(JLcom/myscript/atk/styluscore/pt3;F)V
.end method

.method public static final native pt3_x_get(JLcom/myscript/atk/styluscore/pt3;)F
.end method

.method public static final native pt3_x_set(JLcom/myscript/atk/styluscore/pt3;F)V
.end method

.method public static final native pt3_y_get(JLcom/myscript/atk/styluscore/pt3;)F
.end method

.method public static final native pt3_y_set(JLcom/myscript/atk/styluscore/pt3;F)V
.end method

.method public static native releaseEngine()V
.end method

.method public static final native setItemInfoFunc(IJLcom/myscript/atk/styluscore/Segment;J)J
.end method
