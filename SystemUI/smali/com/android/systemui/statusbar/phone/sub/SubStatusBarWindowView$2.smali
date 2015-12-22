.class Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;
.super Ljava/lang/Object;
.source "SubStatusBarWindowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setSubScreenState(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    :cond_1
    return-void
.end method
