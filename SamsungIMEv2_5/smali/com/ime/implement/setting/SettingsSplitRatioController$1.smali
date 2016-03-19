.class Lcom/ime/implement/setting/SettingsSplitRatioController$1;
.super Ljava/lang/Object;
.source "SettingsSplitRatioController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SettingsSplitRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SettingsSplitRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1900()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abnormal MotionEvent in Controller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget v4, v2, Landroid/graphics/Point;->x:I

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$102(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # invokes: Lcom/ime/implement/setting/SettingsSplitRatioController;->getCurrentOrientation()I
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$200(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3f9a98eda22f6a51L    # 0.025974

    mul-double/2addr v4, v6

    double-to-int v4, v4

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMinWidth:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$302(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v4, v6

    double-to-int v4, v4

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$402(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$502(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$500(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0906d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$602(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    :goto_1
    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$700(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$800(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$900(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mListener:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1100(Lcom/ime/implement/setting/SettingsSplitRatioController;)Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;

    move-result-object v3

    sget-object v4, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    invoke-interface {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;->onOperation(Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3f93ffef39085f4aL    # 0.019531

    mul-double/2addr v4, v6

    double-to-int v4, v4

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMinWidth:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$302(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe51758e219652cL    # 0.6591

    mul-double/2addr v4, v6

    double-to-int v4, v4

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneMaxWidth:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$402(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$502(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftThreshold:I
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$500(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0906d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftSnapThreshold:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$602(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    const/4 v4, 0x0

    # setter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->DeltaX:I
    invoke-static {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1202(Lcom/ime/implement/setting/SettingsSplitRatioController;I)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "fa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ur"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "he"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->screenWidth:I
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$100(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v3

    sub-int v1, v3, v1

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # invokes: Lcom/ime/implement/setting/SettingsSplitRatioController;->setMoveableFocusX(I)V
    invoke-static {v3, v1}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1300(Lcom/ime/implement/setting/SettingsSplitRatioController;I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftPaneContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1400(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->DeltaX:I
    invoke-static {v5}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1200(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v5

    const/4 v6, 0x0

    # invokes: Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V
    invoke-static {v3, v4, v1, v5, v6}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1500(Lcom/ime/implement/setting/SettingsSplitRatioController;Landroid/view/View;IIZ)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    iget-object v4, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mLeftActionBarContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1600(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->DeltaX:I
    invoke-static {v5}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1200(Lcom/ime/implement/setting/SettingsSplitRatioController;)I

    move-result v5

    const/4 v6, 0x1

    # invokes: Lcom/ime/implement/setting/SettingsSplitRatioController;->setLeftPaneWidth(Landroid/view/View;IIZ)V
    invoke-static {v3, v4, v1, v5, v6}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1500(Lcom/ime/implement/setting/SettingsSplitRatioController;Landroid/view/View;IIZ)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$700(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$900(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1700(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mMovableSplitActionBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1800(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$800(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mActionBarFocusedSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1000(Lcom/ime/implement/setting/SettingsSplitRatioController;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    # getter for: Lcom/ime/implement/setting/SettingsSplitRatioController;->mListener:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;
    invoke-static {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->access$1100(Lcom/ime/implement/setting/SettingsSplitRatioController;)Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;

    move-result-object v3

    sget-object v4, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    invoke-interface {v3, v4}, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;->onOperation(Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;)V

    iget-object v3, p0, Lcom/ime/implement/setting/SettingsSplitRatioController$1;->this$0:Lcom/ime/implement/setting/SettingsSplitRatioController;

    invoke-virtual {v3}, Lcom/ime/implement/setting/SettingsSplitRatioController;->saveLastSplitPreference()V

    const/4 v3, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
