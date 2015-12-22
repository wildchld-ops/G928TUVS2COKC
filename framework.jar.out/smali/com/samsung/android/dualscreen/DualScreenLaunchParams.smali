.class public Lcom/samsung/android/dualscreen/DualScreenLaunchParams;
.super Ljava/lang/Object;
.source "DualScreenLaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreenLaunchParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_COUPLED_TASK:I = 0x1

.field public static final FLAG_COUPLED_TASK_CONTEXTUAL_MODE:I = 0x2

.field public static final FLAG_COUPLED_TASK_EXPAND_MODE:I = 0x1

.field public static final FLAG_COUPLED_TASK_LEAF_MODE:I = 0x4


# instance fields
.field private fromDisplayChooser:Z

.field private fromOppositeLaunchApp:Z

.field private mFlags:I

.field private mScreen:Lcom/samsung/android/dualscreen/DualScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    iput-boolean v1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    iput v1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    iput v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public clearFlags(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fromDisplayChooser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    return v0
.end method

.method public fromOppositeLaunchApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    return v0
.end method

.method public getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    :cond_2
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public setFromDisplayChooser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    return-void
.end method

.method public setFromOppositeLaunchApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    return-void
.end method

.method public setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DualScreenLaunchParams { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dualscreen/DualScreen;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
