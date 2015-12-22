.class Lcom/android/systemui/recents/RecentsActivity$10;
.super Landroid/view/OrientationEventListener;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->registerRotationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevAngle:I

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->prevAngle:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->prevAngle:I

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x168

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/recents/RecentsActivity$10;->prevAngle:I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$10;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    :cond_1
    return-void
.end method
