.class Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;
.super Ljava/lang/Object;
.source "SecVideoCallVGAUsaFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVideoCallVGAUsaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPreviewTouchListerner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;-><init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v5, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v4, v5, :cond_0

    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v5, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v4, v5, :cond_2

    const-string v4, "concept_usa_vzw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method
