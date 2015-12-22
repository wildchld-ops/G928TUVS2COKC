.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final OneEightyOverPi:F = 57.29578f

.field private static final STANDARD_GRAVITY:D = 9.80665

.field private static final StuckCheckTHDValue:F = 14.4f

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor <init>(Landroid/view/OrientationEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/4 v12, -0x1

    const/16 v17, 0x0

    aget v17, v16, v17

    move/from16 v0, v17

    neg-float v6, v0

    const/16 v17, 0x1

    aget v17, v16, v17

    move/from16 v0, v17

    neg-float v7, v0

    const/16 v17, 0x2

    aget v17, v16, v17

    move/from16 v0, v17

    neg-float v8, v0

    # getter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static {}, Landroid/view/OrientationEventListener;->access$000()I

    move-result v17

    if-nez v17, :cond_8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x41666666    # 14.4f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # operator++ for: Landroid/view/OrientationEventListener;->mX_StuckCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$108(Landroid/view/OrientationEventListener;)I

    :goto_1
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x41666666    # 14.4f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # operator++ for: Landroid/view/OrientationEventListener;->mY_StuckCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$208(Landroid/view/OrientationEventListener;)I

    :goto_2
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x41666666    # 14.4f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # operator++ for: Landroid/view/OrientationEventListener;->mZ_StuckCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$308(Landroid/view/OrientationEventListener;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mX_StuckCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$100(Landroid/view/OrientationEventListener;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v18, v0

    # getter for: Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I
    invoke-static/range {v18 .. v18}, Landroid/view/OrientationEventListener;->access$400(Landroid/view/OrientationEventListener;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x1

    # setter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$002(I)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mY_StuckCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$200(Landroid/view/OrientationEventListener;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v18, v0

    # getter for: Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I
    invoke-static/range {v18 .. v18}, Landroid/view/OrientationEventListener;->access$400(Landroid/view/OrientationEventListener;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x2

    # setter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$002(I)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mZ_StuckCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$300(Landroid/view/OrientationEventListener;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v18, v0

    # getter for: Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I
    invoke-static/range {v18 .. v18}, Landroid/view/OrientationEventListener;->access$400(Landroid/view/OrientationEventListener;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    const/16 v17, 0x3

    # setter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$002(I)I

    :cond_3
    :goto_4
    # getter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static {}, Landroid/view/OrientationEventListener;->access$000()I

    move-result v17

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mEnabledGyro:Z
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$600(Landroid/view/OrientationEventListener;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$800(Landroid/view/OrientationEventListener;)Landroid/hardware/SensorManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v18, v0

    # getter for: Landroid/view/OrientationEventListener;->mGyro:Landroid/hardware/Sensor;
    invoke-static/range {v18 .. v18}, Landroid/view/OrientationEventListener;->access$700(Landroid/view/OrientationEventListener;)Landroid/hardware/Sensor;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Landroid/view/OrientationEventListener;->mEnabledGyro:Z
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$602(Landroid/view/OrientationEventListener;Z)Z

    :cond_4
    # getter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static {}, Landroid/view/OrientationEventListener;->access$000()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    :goto_5
    mul-float v17, v6, v6

    mul-float v18, v7, v7

    add-float v10, v17, v18

    # getter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static {}, Landroid/view/OrientationEventListener;->access$000()I

    move-result v17

    if-nez v17, :cond_e

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v17, v17, v10

    mul-float v18, v8, v8

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_13

    neg-float v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x42652ee1

    mul-float v9, v17, v18

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v17

    rsub-int/lit8 v12, v17, 0x5a

    :goto_6
    const/16 v17, 0x168

    move/from16 v0, v17

    if-lt v12, v0, :cond_d

    add-int/lit16 v12, v12, -0x168

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mX_StuckCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$102(Landroid/view/OrientationEventListener;I)I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mY_StuckCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$202(Landroid/view/OrientationEventListener;I)I

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mZ_StuckCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$302(Landroid/view/OrientationEventListener;I)I

    goto/16 :goto_3

    :cond_8
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x41666666    # 14.4f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x41666666    # 14.4f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x41666666    # 14.4f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # operator++ for: Landroid/view/OrientationEventListener;->m_StableCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$508(Landroid/view/OrientationEventListener;)I

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->m_StableCnt:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$500(Landroid/view/OrientationEventListener;)I

    move-result v17

    if-lez v17, :cond_3

    const/16 v17, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$002(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->m_StableCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$502(Landroid/view/OrientationEventListener;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mX_StuckCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$102(Landroid/view/OrientationEventListener;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mY_StuckCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$202(Landroid/view/OrientationEventListener;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mZ_StuckCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$302(Landroid/view/OrientationEventListener;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mEnabledGyro:Z
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$600(Landroid/view/OrientationEventListener;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$800(Landroid/view/OrientationEventListener;)Landroid/hardware/SensorManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v18, v0

    # getter for: Landroid/view/OrientationEventListener;->mGyro:Landroid/hardware/Sensor;
    invoke-static/range {v18 .. v18}, Landroid/view/OrientationEventListener;->access$700(Landroid/view/OrientationEventListener;)Landroid/hardware/Sensor;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mEnabledGyro:Z
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$602(Landroid/view/OrientationEventListener;Z)Z

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->m_StableCnt:I
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$502(Landroid/view/OrientationEventListener;I)I

    goto/16 :goto_7

    :pswitch_2
    const-wide v18, 0x40580ae79339d914L    # 96.17038422249999

    mul-float v17, v7, v7

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-float v17, v8, v8

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v14, v18, v20

    const-wide/16 v18, 0x0

    cmpl-double v17, v14, v18

    if-lez v17, :cond_a

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v6, v0

    goto/16 :goto_5

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    :pswitch_3
    const-wide v18, 0x40580ae79339d914L    # 96.17038422249999

    mul-float v17, v6, v6

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-float v17, v8, v8

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v14, v18, v20

    const-wide/16 v18, 0x0

    cmpl-double v17, v14, v18

    if-lez v17, :cond_b

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v7, v0

    goto/16 :goto_5

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_5

    :pswitch_4
    const-wide v18, 0x40580ae79339d914L    # 96.17038422249999

    mul-float v17, v6, v6

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    mul-float v17, v7, v7

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v14, v18, v20

    const-wide/16 v18, 0x0

    cmpl-double v17, v14, v18

    if-lez v17, :cond_c

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v8, v0

    goto/16 :goto_5

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_d
    :goto_8
    if-gez v12, :cond_13

    add-int/lit16 v12, v12, 0x168

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mDataIndex:Z
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$900(Landroid/view/OrientationEventListener;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPredata:[F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1000(Landroid/view/OrientationEventListener;)[F

    move-result-object v17

    const/16 v18, 0x0

    aput v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPredata:[F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1000(Landroid/view/OrientationEventListener;)[F

    move-result-object v17

    const/16 v18, 0x1

    aput v7, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPredata:[F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1000(Landroid/view/OrientationEventListener;)[F

    move-result-object v17

    const/16 v18, 0x2

    aput v8, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Landroid/view/OrientationEventListener;->mDataIndex:Z
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$902(Landroid/view/OrientationEventListener;Z)Z

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mDataIndex:Z
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$900(Landroid/view/OrientationEventListener;)Z

    move-result v17

    if-nez v17, :cond_16

    mul-float v17, v6, v6

    mul-float v18, v7, v7

    add-float v17, v17, v18

    mul-float v18, v8, v8

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    float-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x42652ee1

    mul-float v13, v17, v18

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x42a00000    # 80.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_13

    neg-float v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x42652ee1

    mul-float v4, v17, v18

    const/high16 v17, 0x42b40000    # 90.0f

    sub-float v4, v17, v4

    :goto_a
    const/high16 v17, 0x43b40000    # 360.0f

    cmpl-float v17, v4, v17

    if-ltz v17, :cond_10

    const/high16 v17, 0x43b40000    # 360.0f

    sub-float v4, v4, v17

    goto :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPredata:[F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1000(Landroid/view/OrientationEventListener;)[F

    move-result-object v17

    const/16 v18, 0x0

    aget v17, v17, v18

    add-float v17, v17, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPredata:[F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1000(Landroid/view/OrientationEventListener;)[F

    move-result-object v17

    const/16 v18, 0x1

    aget v17, v17, v18

    add-float v17, v17, v7

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPredata:[F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1000(Landroid/view/OrientationEventListener;)[F

    move-result-object v17

    const/16 v18, 0x2

    aget v17, v17, v18

    add-float v17, v17, v8

    const/high16 v18, 0x40000000    # 2.0f

    div-float v8, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->mDataIndex:Z
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$902(Landroid/view/OrientationEventListener;Z)Z

    goto/16 :goto_9

    :cond_10
    :goto_b
    const/16 v17, 0x0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_11

    const/high16 v17, 0x43b40000    # 360.0f

    add-float v4, v4, v17

    goto :goto_b

    :cond_11
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v17, v5, 0x2d

    div-int/lit8 v11, v17, 0x5a

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v11, v0, :cond_12

    const/4 v11, 0x0

    :cond_12
    mul-int/lit8 v12, v11, 0x5a

    :cond_13
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1200(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1200(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1100(Landroid/view/OrientationEventListener;)I

    move-result v17

    move/from16 v0, v17

    if-eq v12, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static {v0, v12}, Landroid/view/OrientationEventListener;->access$1102(Landroid/view/OrientationEventListener;I)I

    # getter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static {}, Landroid/view/OrientationEventListener;->access$000()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    const/16 v17, 0x10e

    move/from16 v0, v17

    if-ne v12, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1300(Landroid/view/OrientationEventListener;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1400(Landroid/view/OrientationEventListener;)F

    move-result v17

    const/high16 v18, 0x40a00000    # 5.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_15

    const/16 v12, 0x5a

    :cond_15
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static {v0, v12}, Landroid/view/OrientationEventListener;->access$1302(Landroid/view/OrientationEventListener;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$1402(Landroid/view/OrientationEventListener;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$1502(Landroid/view/OrientationEventListener;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1100(Landroid/view/OrientationEventListener;)I

    move-result v12

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1300(Landroid/view/OrientationEventListener;)I

    move-result v17

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1500(Landroid/view/OrientationEventListener;)F

    move-result v17

    const/high16 v18, -0x3f600000    # -5.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_15

    const/16 v12, 0x5a

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1300(Landroid/view/OrientationEventListener;)I

    move-result v17

    const/16 v18, 0xb4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1500(Landroid/view/OrientationEventListener;)F

    move-result v17

    const/high16 v18, 0x40a00000    # 5.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_15

    const/16 v12, 0x5a

    goto :goto_d

    :cond_19
    # getter for: Landroid/view/OrientationEventListener;->mRotationMode:I
    invoke-static {}, Landroid/view/OrientationEventListener;->access$000()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1300(Landroid/view/OrientationEventListener;)I

    move-result v17

    if-nez v17, :cond_15

    const/16 v17, 0xb4

    move/from16 v0, v17

    if-ne v12, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1500(Landroid/view/OrientationEventListener;)F

    move-result v17

    const/high16 v18, -0x3cea0000    # -150.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_15

    const/16 v12, 0x5a

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1100(Landroid/view/OrientationEventListener;)I

    move-result v17

    move/from16 v0, v17

    if-ne v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1100(Landroid/view/OrientationEventListener;)I

    move-result v17

    const/16 v18, 0x5a

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1100(Landroid/view/OrientationEventListener;)I

    move-result v17

    const/16 v18, 0x10e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1500(Landroid/view/OrientationEventListener;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x43160000    # 150.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    # getter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static/range {v17 .. v17}, Landroid/view/OrientationEventListener;->access$1300(Landroid/view/OrientationEventListener;)I

    move-result v17

    div-int/lit8 v17, v17, 0x5a

    add-int/lit8 v17, v17, 0x2

    rem-int/lit8 v17, v17, 0x4

    mul-int/lit8 v12, v17, 0x5a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/view/OrientationEventListener;->mPreOrientation:I
    invoke-static {v0, v12}, Landroid/view/OrientationEventListener;->access$1302(Landroid/view/OrientationEventListener;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$1402(Landroid/view/OrientationEventListener;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v18}, Landroid/view/OrientationEventListener;->access$1502(Landroid/view/OrientationEventListener;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3f947ae147ae147bL    # 0.02

    mul-double v18, v18, v20

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    # += operator for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F
    invoke-static/range {v17 .. v19}, Landroid/view/OrientationEventListener;->access$1418(Landroid/view/OrientationEventListener;D)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3f947ae147ae147bL    # 0.02

    mul-double v18, v18, v20

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    # += operator for: Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F
    invoke-static/range {v17 .. v19}, Landroid/view/OrientationEventListener;->access$1518(Landroid/view/OrientationEventListener;D)F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
