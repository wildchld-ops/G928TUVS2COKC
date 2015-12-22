.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sKnownAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCfmsService:Landroid/os/CustomFrequencyManager;

.field private mFocused:Z

.field private mKnownAppSipScenario:Z

.field private mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

.field private mSipTextLen:I

.field private mSipTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/EditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    iput-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    new-instance v0, Landroid/widget/EditText$1;

    invoke-direct {v0, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    iput-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    return-void
.end method

.method static synthetic access$002(Landroid/widget/EditText;I)I
    .locals 0

    iput p1, p0, Landroid/widget/EditText;->mSipTextLen:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/EditText;->updateSipFocusStatus()V

    return-void
.end method

.method private updateSipFocusStatus()V
    .locals 4

    iget-boolean v1, p0, Landroid/widget/EditText;->mFocused:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/EditText;->mSipTextLen:I

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    iget-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Landroid/widget/EditText;->mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string v3, "KNOWN_APP_SIP"

    iget-boolean v1, p0, Landroid/widget/EditText;->mKnownAppSipScenario:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/EditText;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_0
    return-void
.end method

.method public extendSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideCursorControllers()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/EditText;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    sget-object v0, Landroid/widget/EditText;->sKnownAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    iput-boolean p1, p0, Landroid/widget/EditText;->mFocused:Z

    invoke-direct {p0}, Landroid/widget/EditText;->updateSipFocusStatus()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/EditText;->mSipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/EditText;->isHoveringUIEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/EditText$2;

    invoke-direct {v1, p0}, Landroid/widget/EditText$2;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/EditText;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    :cond_2
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hover icon is failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    if-eqz p2, :cond_1

    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch
.end method

.method public selectAll()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCursorColor(I)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
