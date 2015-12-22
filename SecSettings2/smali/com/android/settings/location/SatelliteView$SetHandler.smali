.class public Lcom/android/settings/location/SatelliteView$SetHandler;
.super Landroid/os/Handler;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/SatelliteView;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/SatelliteView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    new-array v1, v10, [D

    # getter for: Lcom/android/settings/location/SatelliteView;->mLongitude:D
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$200()D

    move-result-wide v4

    mul-double/2addr v4, v6

    aput-wide v4, v1, v13

    # getter for: Lcom/android/settings/location/SatelliteView;->mLatitude:D
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$300()D

    move-result-wide v4

    mul-double/2addr v4, v6

    aput-wide v4, v1, v12

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/location/SatelliteView;->startGPS()V

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$2300(Lcom/android/settings/location/SatelliteView;)Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/location/SatelliteView;->showSVStatus()V

    iput v11, v0, Landroid/os/Message;->what:I

    # getter for: Lcom/android/settings/location/SatelliteView;->ANIMATION_TIME:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$2400()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v12}, Lcom/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    sget v3, Lcom/android/settings/location/SatelliteView;->ani_count:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/settings/location/SatelliteView;->ani_count:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$2300(Lcom/android/settings/location/SatelliteView;)Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v3

    sget-wide v4, Lcom/android/settings/location/SatelliteView;->ani_gap_x:D

    sget v6, Lcom/android/settings/location/SatelliteView;->ani_count:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-wide v6, Lcom/android/settings/location/SatelliteView;->ani_gap_y:D

    neg-double v6, v6

    sget v8, Lcom/android/settings/location/SatelliteView;->ani_count:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->setPoint(DD)V

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/location/SatelliteView;->showSVStatus()V

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    const v4, 0x7f0a15c0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    # getter for: Lcom/android/settings/location/SatelliteView;->mAltitude:D
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$400()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    iget-object v6, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mSpeed:D
    invoke-static {v6}, Lcom/android/settings/location/SatelliteView;->access$600(Lcom/android/settings/location/SatelliteView;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    # getter for: Lcom/android/settings/location/SatelliteView;->mBearing:F
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$500()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    iget-object v6, v6, Lcom/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v6, v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$2500(Lcom/android/settings/location/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v10}, Lcom/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iput v10, v0, Landroid/os/Message;->what:I

    # getter for: Lcom/android/settings/location/SatelliteView;->ANIMATION_TIME:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$2400()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iput v11, v0, Landroid/os/Message;->what:I

    # getter for: Lcom/android/settings/location/SatelliteView;->ANIMATION_TIME:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$2400()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/settings/location/SatelliteView;->ANIMATION_COUNT:I
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$2600()I

    move-result v3

    sput v3, Lcom/android/settings/location/SatelliteView;->ani_count:I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v11}, Lcom/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->drawView:Lcom/android/settings/location/SatelliteView$SatelliteDrawView;
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$2300(Lcom/android/settings/location/SatelliteView;)Lcom/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    const v4, 0x7f0a15c0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    # getter for: Lcom/android/settings/location/SatelliteView;->mAltitude:D
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$400()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    iget-object v6, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mSpeed:D
    invoke-static {v6}, Lcom/android/settings/location/SatelliteView;->access$600(Lcom/android/settings/location/SatelliteView;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    # getter for: Lcom/android/settings/location/SatelliteView;->mBearing:F
    invoke-static {}, Lcom/android/settings/location/SatelliteView;->access$500()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    iget-object v6, v6, Lcom/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v6, v5, v11

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$2500(Lcom/android/settings/location/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
