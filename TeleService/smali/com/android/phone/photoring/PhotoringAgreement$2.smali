.class Lcom/android/phone/photoring/PhotoringAgreement$2;
.super Ljava/lang/Object;
.source "PhotoringAgreement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoringAgreement;->createThreadAndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringAgreement;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringAgreement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    # getter for: Lcom/android/phone/photoring/PhotoringAgreement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringAgreement;->access$300(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    # getter for: Lcom/android/phone/photoring/PhotoringAgreement;->agreeFile:[[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/photoring/PhotoringAgreement;->access$400(Lcom/android/phone/photoring/PhotoringAgreement;)[[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    # getter for: Lcom/android/phone/photoring/PhotoringAgreement;->operator:I
    invoke-static {v3}, Lcom/android/phone/photoring/PhotoringAgreement;->access$500(Lcom/android/phone/photoring/PhotoringAgreement;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    # getter for: Lcom/android/phone/photoring/PhotoringAgreement;->mAgreeType:I
    invoke-static {v3}, Lcom/android/phone/photoring/PhotoringAgreement;->access$600(Lcom/android/phone/photoring/PhotoringAgreement;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/phone/photoring/PhotoringAgreement;->s:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringAgreement;->access$102(Lcom/android/phone/photoring/PhotoringAgreement;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$2;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    # getter for: Lcom/android/phone/photoring/PhotoringAgreement;->handler_loading:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringAgreement;->access$700(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
