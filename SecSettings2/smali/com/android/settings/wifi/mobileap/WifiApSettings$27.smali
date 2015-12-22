.class Lcom/android/settings/wifi/mobileap/WifiApSettings$27;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/16 v1, 0x3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03bb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$27;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
