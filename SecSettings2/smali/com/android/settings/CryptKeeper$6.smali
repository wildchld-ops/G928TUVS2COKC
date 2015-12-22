.class Lcom/android/settings/CryptKeeper$6;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper$6;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/CryptKeeper$6;->passwordType:I

    const-string v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper$6;->owner_info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/settings/CryptKeeper$6;->passwordType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f04005c

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f0a0bf9

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3, v4}, Lcom/android/settings/CryptKeeper;->access$1702(Lcom/android/settings/CryptKeeper;I)I

    :goto_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f100077

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$1700(Lcom/android/settings/CryptKeeper;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v3}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x1e0

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const/16 v4, 0x32

    # invokes: Lcom/android/settings/CryptKeeper;->dipToPixel(I)I
    invoke-static {v3, v4}, Lcom/android/settings/CryptKeeper;->access$1900(Lcom/android/settings/CryptKeeper;I)I

    move-result v3

    invoke-virtual {v0, v5, v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f100102

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->owner_info:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->passwordEntryInit()V
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$2000(Lcom/android/settings/CryptKeeper;)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # getter for: Lcom/android/settings/CryptKeeper;->mCooldown:Z
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$2100(Lcom/android/settings/CryptKeeper;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/CryptKeeper;->access$1800(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->cooldown()V
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$2200(Lcom/android/settings/CryptKeeper;)V

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/settings/CryptKeeper$6;->passwordType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f04005a

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/CryptKeeper;->access$1800(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f0a0bfa

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3, v4}, Lcom/android/settings/CryptKeeper;->access$1702(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f040058

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$6;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f0a0bf8

    # setter for: Lcom/android/settings/CryptKeeper;->mStatusString:I
    invoke-static {v3, v4}, Lcom/android/settings/CryptKeeper;->access$1702(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_0
.end method
