.class Lcom/android/phone/EmergencyDialer$5;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->setupMobileKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$300(Lcom/android/phone/EmergencyDialer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1300(Lcom/android/phone/EmergencyDialer;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
