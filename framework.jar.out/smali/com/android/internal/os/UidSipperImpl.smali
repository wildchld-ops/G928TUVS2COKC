.class public Lcom/android/internal/os/UidSipperImpl;
.super Ljava/lang/Object;
.source "UidSipperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/UidSipperImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private consumerPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;",
            ">;"
        }
    .end annotation
.end field

.field private finalPower:D

.field private isConsumerListIncluded:Z

.field private final uidSippers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/UidSipperImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/UidSipperImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/UidSipperImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BatteryStatsDumper"

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    const-string v8, "BatteryStatsDumper"

    const-string v9, "Creating UidSipperImpl class from parcel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    const-string v8, "BatteryStatsDumper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Total number of uids = "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    const-string v8, "BatteryStatsDumper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Creating UidSipper class for "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const-string v8, "BatteryStatsDumper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Total number of graph points for this uid is "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/16 v18, 0x0

    if-eqz v11, :cond_4

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v18, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method addConsumerPackages(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUidSipper(Lcom/android/internal/os/UidSipper;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFinalPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    return-wide v0
.end method

.method public getPowerConsumingPackageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUsageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initializeConsumerList()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidSipperImpl;->isConsumerListIncluded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public isConsumerListIncluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/UidSipperImpl;->isConsumerListIncluded:Z

    return v0
.end method

.method public setFinalPower(D)V
    .locals 1

    iput-wide p1, p0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 14

    iget-wide v12, p0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_7

    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/UidSipper;

    iget-object v11, v9, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v12

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v9}, Lcom/android/internal/os/UidSipper;->isUserLaunched()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {v9}, Lcom/android/internal/os/UidSipper;->isUsingNetwork()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v11, v9, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_3

    iget-object v11, v9, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidSipper$BatterySipStat;

    invoke-virtual {v0}, Lcom/android/internal/os/UidSipper$BatterySipStat;->getTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/UidSipper$BatterySipStat;->isLcdOn()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {v0}, Lcom/android/internal/os/UidSipper$BatterySipStat;->getPower()D

    move-result-wide v12

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    iget-boolean v11, p0, Lcom/android/internal/os/UidSipperImpl;->isConsumerListIncluded:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_6

    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;

    invoke-virtual {v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->getTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->getPackageCount()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->getPackageNames()[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_5

    aget-object v11, v8, v7

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
