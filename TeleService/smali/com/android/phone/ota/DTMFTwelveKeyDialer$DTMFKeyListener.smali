.class Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ota/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/ota/DTMFTwelveKeyDialer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/ota/DTMFTwelveKeyDialer;Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/ota/DTMFTwelveKeyDialer;
    .param p2    # Lcom/android/phone/ota/DTMFTwelveKeyDialer$1;

    invoke-direct {p0, p1}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/ota/DTMFTwelveKeyDialer;)V

    return-void
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/text/Editable;
    .param p3    # I
    .param p4    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/text/Editable;
    .param p3    # I
    .param p4    # Landroid/view/KeyEvent;

    invoke-virtual {p0, p4, p2}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    # invokes: Lcom/android/phone/ota/DTMFTwelveKeyDialer;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer;->access$000(Lcom/android/phone/ota/DTMFTwelveKeyDialer;C)V

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/text/Editable;
    .param p3    # I
    .param p4    # Landroid/view/KeyEvent;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    invoke-virtual {p0, p4, p2}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    invoke-virtual {p0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/ota/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/ota/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/ota/DTMFTwelveKeyDialer;->stopTone()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
