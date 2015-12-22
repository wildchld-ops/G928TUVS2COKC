.class Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "FIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mFixBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "UNFIX"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
