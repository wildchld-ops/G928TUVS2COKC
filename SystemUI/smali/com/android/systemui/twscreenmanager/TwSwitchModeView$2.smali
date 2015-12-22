.class Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;
.super Landroid/view/animation/Animation;
.source "TwSwitchModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

.field final synthetic val$DISPLAY_ID:I

.field final synthetic val$LEFT_MARGIN:I

.field final synthetic val$MARGIN_LAYOUT_PARAMS_FOR_MAIN:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$MARGIN_LAYOUT_PARAMS_FOR_SUB:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$RIGHT_MARGIN:I

.field final synthetic val$SCREEN_SHOT_MAIN:Landroid/widget/ImageView;

.field final synthetic val$SCREEN_SHOT_SUB:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;IILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;ILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iput p2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$DISPLAY_ID:I

    iput p3, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$RIGHT_MARGIN:I

    iput-object p4, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$MARGIN_LAYOUT_PARAMS_FOR_MAIN:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p5, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$SCREEN_SHOT_MAIN:Landroid/widget/ImageView;

    iput p6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$LEFT_MARGIN:I

    iput-object p7, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$MARGIN_LAYOUT_PARAMS_FOR_SUB:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p8, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$SCREEN_SHOT_SUB:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget v3, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$DISPLAY_ID:I

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMainScreen(I)Z
    invoke-static {v2, v3}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$000(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$RIGHT_MARGIN:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$RIGHT_MARGIN:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$MARGIN_LAYOUT_PARAMS_FOR_MAIN:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$SCREEN_SHOT_MAIN:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$DISPLAY_ID:I

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$LEFT_MARGIN:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$LEFT_MARGIN:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$MARGIN_LAYOUT_PARAMS_FOR_SUB:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;->val$SCREEN_SHOT_SUB:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0
.end method
