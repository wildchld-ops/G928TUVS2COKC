.class public Lcom/android/settings/dashboard/DashboardCategory;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:J

.field public tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/DashboardCategory$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardCategory$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardCategory;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTile(I)Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public getTilesCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Lcom/android/settings/dashboard/DashboardTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTile;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTile(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTile;

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/dashboard/DashboardTile;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
