.class Lcom/android/phone/photoring/PhotoRingScreen$6$1;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen$6;->onReceive(Lcom/android/phone/photoring/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/photoring/PhotoRingScreen$6;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$6$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$6$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$6;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$200(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$6$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$6;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2300(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.android.phone/files/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$6$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$6;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2300(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "photoring_data.png"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$6$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$6;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1902(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    return-void

    :cond_0
    const-string v0, "photoring_data.mp4"

    goto :goto_0
.end method
