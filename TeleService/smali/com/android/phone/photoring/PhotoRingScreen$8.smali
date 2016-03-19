.class Lcom/android/phone/photoring/PhotoRingScreen$8;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$8;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$8;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2402(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$8;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    return-void
.end method
