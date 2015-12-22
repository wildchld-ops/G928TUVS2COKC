.class Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "SecVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamControl"
.end annotation


# instance fields
.field controller:Landroid/media/session/MediaController;

.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field seekbarView:Landroid/widget/SeekBar;

.field streamType:I

.field underDivider:Landroid/widget/ImageView;

.field volTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumePanel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;-><init>()V

    return-void
.end method
