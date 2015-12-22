.class Landroid/location/LocationManager$ExerciseLocationListenerTransport;
.super Landroid/location/IExerciseLocationListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExerciseLocationListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1


# instance fields
.field private final mListener:Landroid/location/ExerciseLocationListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/ExerciseLocationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/location/LocationManager$ExerciseLocationListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IExerciseLocationListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/location/LocationManager$ExerciseLocationListenerTransport;->mListener:Landroid/location/ExerciseLocationListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    .locals 11

    iget-object v0, p0, Landroid/location/LocationManager$ExerciseLocationListenerTransport;->mListener:Landroid/location/ExerciseLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationManager$ExerciseLocationListenerTransport;->mListener:Landroid/location/ExerciseLocationListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/location/ExerciseLocationListener;->onLocationChanged([J[D[D[F[F[F[D[D[JI)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$ExerciseLocationListenerTransport;->mListener:Landroid/location/ExerciseLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationManager$ExerciseLocationListenerTransport;->mListener:Landroid/location/ExerciseLocationListener;

    invoke-interface {v0, p1}, Landroid/location/ExerciseLocationListener;->onStatusChanged(I)V

    :cond_0
    return-void
.end method
