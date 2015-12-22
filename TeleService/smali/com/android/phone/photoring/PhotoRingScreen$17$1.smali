.class Lcom/android/phone/photoring/PhotoRingScreen$17$1;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen$17;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/photoring/PhotoRingScreen$17;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen$17;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$17$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$17;

    iput-object p2, p0, Lcom/android/phone/photoring/PhotoRingScreen$17$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$17$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$17$1;->this$1:Lcom/android/phone/photoring/PhotoRingScreen$17;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen$17;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadPhotoNameInfo()V

    :cond_0
    return-void
.end method
