.class public interface abstract Lcom/myscript/atk/sltw/SingleLineTextWidgetApi;
.super Ljava/lang/Object;
.source "SingleLineTextWidgetApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;,
        Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_CANNOT_INITIALIZE_ENGINE:I = 0x4

.field public static final ERROR_CANNOT_LOAD_ENGINE:I = 0x3

.field public static final ERROR_CANNOT_LOAD_RESOURCE:I = 0x8

.field public static final ERROR_ENGINE_NOT_LOADED:I = 0x2

.field public static final ERROR_INVALID_CERTIFICATE:I = 0xb

.field public static final ERROR_MISSING_AK_RESOURCE:I = 0x9

.field public static final ERROR_MISSING_CERTIFICATE:I = 0x5

.field public static final ERROR_MISSING_CONFIG:I = 0x6

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final ERROR_UNSUITABLE_AK_RESOURCE:I = 0xa

.field public static final ERROR_UNSUITABLE_CONFIG:I = 0x7

.field public static final INK_EFFECT_MARKER:I = 0x2

.field public static final INK_EFFECT_NONE:I = 0x0

.field public static final INK_EFFECT_PRESSURE:I = 0x1

.field public static final NO_ERROR:I


# virtual methods
.method public abstract centerTo(I)V
.end method

.method public abstract configure(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
.end method

.method public abstract getCursorIndex()I
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorString()Ljava/lang/String;
.end method

.method public abstract getInsertIndex()I
.end method

.method public abstract isCursorHandleDragging()Z
.end method

.method public abstract isInsertHandleDragging()Z
.end method

.method public abstract isInsertionMode()Z
.end method

.method public abstract isIsolatedMode()Z
.end method

.method public abstract isUserScrolling()Z
.end method

.method public abstract moveCursorToVisibleIndex()Z
.end method

.method public abstract releaseEngine()V
.end method

.method public abstract replaceCharacters(IILjava/lang/String;)V
.end method

.method public abstract scrollTo(I)V
.end method

.method public abstract scrollToCursor()V
.end method

.method public abstract setAutoHideHandleDelay(I)V
.end method

.method public abstract setAutoHideHandleEnabled(Z)V
.end method

.method public abstract setAutoScrollDelay(I)V
.end method

.method public abstract setAutoScrollDelays(II)V
.end method

.method public abstract setAutoScrollEnabled(Z)V
.end method

.method public abstract setAutoScrollMargin(F)V
.end method

.method public abstract setAutoTypesetDelay(I)V
.end method

.method public abstract setAutoTypesetDelays(II)V
.end method

.method public abstract setAutoTypesetEnabled(Z)V
.end method

.method public abstract setBaselineColor(I)V
.end method

.method public abstract setBaselinePosition(F)V
.end method

.method public abstract setBaselineThickness(F)V
.end method

.method public abstract setBoxMask(IIZ)V
.end method

.method public abstract setBoxesConfiguration(IIIII)V
.end method

.method public abstract setBoxesResource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setCorrectionMode()V
.end method

.method public abstract setCursorHandleResource(I)V
.end method

.method public abstract setCursorIndex(I)V
.end method

.method public abstract setCursorMargins(FF)V
.end method

.method public abstract setCursorResource(I)V
.end method

.method public abstract setHoverEnabled(Z)V
.end method

.method public abstract setInkCapResources(II)V
.end method

.method public abstract setInkColor(I)V
.end method

.method public abstract setInkColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setInkEffect(I)V
.end method

.method public abstract setInkWidth(F)V
.end method

.method public abstract setInsertHandleResource(I)V
.end method

.method public abstract setInsertWindowColor(I)V
.end method

.method public abstract setInsertionMode(I)Z
.end method

.method public abstract setOnConfigureListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;)V
.end method

.method public abstract setOnCursorHandleDragListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;)V
.end method

.method public abstract setOnGestureListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;)V
.end method

.method public abstract setOnInsertHandleClickedListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;)V
.end method

.method public abstract setOnInsertHandleDragListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;)V
.end method

.method public abstract setOnInsertionWindowListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;)V
.end method

.method public abstract setOnRecognitionListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;)V
.end method

.method public abstract setOnSelectionChangedListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;)V
.end method

.method public abstract setOnTextChangedListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;)V
.end method

.method public abstract setOnUserScrollListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;)V
.end method

.method public abstract setScrollArrowLeftResource(I)V
.end method

.method public abstract setScrollArrowRightResource(I)V
.end method

.method public abstract setScrollbarBackground(I)V
.end method

.method public abstract setScrollbarMask(I)V
.end method

.method public abstract setScrollbarResource(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setTextColor(I)V
.end method

.method public abstract setTextColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTextSize(F)V
.end method

.method public abstract setTextSizes([F)V
.end method

.method public abstract setTransientSpaceEnabled(Z)V
.end method

.method public abstract setTransientSpaceVisibleWhenEmpty(Z)V
.end method

.method public abstract setTypeface(Landroid/graphics/Typeface;)V
.end method

.method public abstract setWritingAreaBackgroundColor(I)V
.end method

.method public abstract setWritingAreaBackgroundResource(I)V
.end method

.method public abstract smoothCenterTo(I)V
.end method

.method public abstract smoothScrollTo(I)V
.end method

.method public abstract smoothScrollToCursor()V
.end method
