.class Lcom/android/incallui/SecVideoCallCardVGAFragment$1;
.super Ljava/lang/Object;
.source "SecVideoCallCardVGAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVideoCallCardVGAFragment;->inflateCameraButtonLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallCardVGAFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallCardVGAFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallCardVGAFragment$1;->this$0:Lcom/android/incallui/SecVideoCallCardVGAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v5, 0x7f0a010c

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardVGAFragment$1;->this$0:Lcom/android/incallui/SecVideoCallCardVGAFragment;

    # getter for: Lcom/android/incallui/SecVideoCallCardVGAFragment;->mVolteCameraText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/incallui/SecVideoCallCardVGAFragment;->access$000(Lcom/android/incallui/SecVideoCallCardVGAFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardVGAFragment$1;->this$0:Lcom/android/incallui/SecVideoCallCardVGAFragment;

    # getter for: Lcom/android/incallui/SecVideoCallCardVGAFragment;->mVolteCameraText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/incallui/SecVideoCallCardVGAFragment;->access$000(Lcom/android/incallui/SecVideoCallCardVGAFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;II)V

    return-void
.end method
