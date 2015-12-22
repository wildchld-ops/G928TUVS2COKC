.class Lcom/android/settings/location/SatelliteView$4;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/settings/location/SatelliteView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    # setter for: Lcom/android/settings/location/SatelliteView;->mLongitude:D
    invoke-static {v10, v11}, Lcom/android/settings/location/SatelliteView;->access$202(D)D

    # setter for: Lcom/android/settings/location/SatelliteView;->mLatitude:D
    invoke-static {v8, v9}, Lcom/android/settings/location/SatelliteView;->access$302(D)D

    # setter for: Lcom/android/settings/location/SatelliteView;->mAltitude:D
    invoke-static {v4, v5}, Lcom/android/settings/location/SatelliteView;->access$402(D)D

    # setter for: Lcom/android/settings/location/SatelliteView;->mBearing:F
    invoke-static {v3}, Lcom/android/settings/location/SatelliteView;->access$502(F)F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    const/high16 v15, 0x45610000    # 3600.0f

    mul-float/2addr v15, v7

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    # setter for: Lcom/android/settings/location/SatelliteView;->mSpeed:D
    invoke-static {v14, v0, v1}, Lcom/android/settings/location/SatelliteView;->access$602(Lcom/android/settings/location/SatelliteView;D)D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    # setter for: Lcom/android/settings/location/SatelliteView;->mAccuracy:F
    invoke-static {v14, v2}, Lcom/android/settings/location/SatelliteView;->access$702(Lcom/android/settings/location/SatelliteView;F)F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    # setter for: Lcom/android/settings/location/SatelliteView;->mTime:J
    invoke-static {v14, v12, v13}, Lcom/android/settings/location/SatelliteView;->access$802(Lcom/android/settings/location/SatelliteView;J)J

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    # getter for: Lcom/android/settings/location/SatelliteView;->mTime:J
    invoke-static {v14}, Lcom/android/settings/location/SatelliteView;->access$800(Lcom/android/settings/location/SatelliteView;)J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v14}, Lcom/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/SatelliteView$4;->this$0:Lcom/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method
