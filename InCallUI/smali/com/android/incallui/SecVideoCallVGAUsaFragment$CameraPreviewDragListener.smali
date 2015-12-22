.class Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;
.super Ljava/lang/Object;
.source "SecVideoCallVGAUsaFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVideoCallVGAUsaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPreviewDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;-><init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    const v8, 0x7f0a01df

    const v7, 0x7f0a01dc

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    const-string v3, "Drag STARTED"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setAlpha(F)V

    goto :goto_0

    :pswitch_2
    const-string v3, "Drag ENTERED"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v3, "Drag EXITED"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_4
    const-string v3, "Drag DROP"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-eq v3, v4, :cond_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    # setter for: Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsCameraViewMoved:Z
    invoke-static {v3, v6}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->access$302(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Z)Z

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_6

    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-gez v2, :cond_8

    const/4 v2, 0x0

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v3, v4, :cond_0

    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-ne v3, v4, :cond_1

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int v1, v3, v4

    goto :goto_1

    :cond_6
    if-gez v1, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int v1, v3, v4

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0290

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0290

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v2, v3, v4

    goto/16 :goto_2

    :cond_9
    if-gez v2, :cond_a

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "concept_usa_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ui_for_mpcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v3

    if-ne v3, v6, :cond_d

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCleanMode()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v2, v3, v4

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    goto/16 :goto_2

    :pswitch_5
    const-string v3, "Drag ENDED"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v3, v5}, Landroid/view/TextureView;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
