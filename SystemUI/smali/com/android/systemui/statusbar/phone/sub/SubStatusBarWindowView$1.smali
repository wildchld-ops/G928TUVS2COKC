.class Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.subscreensetting"

    const-string v2, "com.sec.android.app.subscreensetting.SubScreenSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/dualscreen/DualScreenManager;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/dualscreen/DualScreen;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->startActivityAndDismiss(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
