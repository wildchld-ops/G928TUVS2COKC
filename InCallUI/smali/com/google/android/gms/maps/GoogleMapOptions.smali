.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;


# instance fields
.field private final ab:I

.field private go:Ljava/lang/Boolean;

.field private gp:Ljava/lang/Boolean;

.field private gq:I

.field private gr:Lcom/google/android/gms/maps/model/CameraPosition;

.field private gs:Ljava/lang/Boolean;

.field private gt:Ljava/lang/Boolean;

.field private gu:Ljava/lang/Boolean;

.field private gv:Ljava/lang/Boolean;

.field private gw:Ljava/lang/Boolean;

.field private gx:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gq:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ab:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gq:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ab:I

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->go:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gp:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gq:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gr:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gs:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gt:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gu:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gv:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gw:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gx:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method aZ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->go:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method ba()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gp:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method bb()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gs:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method bc()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gt:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method bd()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gu:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method be()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gv:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method bf()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gw:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method bg()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gx:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->b(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gr:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->gq:I

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ab:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/maps/internal/q;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
