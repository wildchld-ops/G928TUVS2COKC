.class final enum Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "SecVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/volume/SecVolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum FMStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum TTSStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum VideoCallStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const v14, 0x10808f9

    const v13, 0x108090e

    const v12, 0x108090a

    const/4 v11, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x10404c4

    const v5, 0x10808f1

    const v6, 0x10808f1

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const/4 v6, 0x2

    const v7, 0x104098f

    const v8, 0x10808fa

    const v9, 0x10808fc

    move v5, v11

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const/4 v5, 0x2

    const v7, 0x10404c6

    move v6, v2

    move v8, v14

    move v9, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const/4 v5, 0x3

    const/4 v6, 0x4

    const v7, 0x10404c1

    move v8, v12

    move v9, v13

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const v7, 0x1040990

    move v8, v12

    move v9, v13

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const v7, 0x1040991

    const v8, 0x10808f3

    const v9, 0x10808f5

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "MasterStream"

    const/4 v5, 0x6

    const/16 v6, -0x64

    const v7, 0x10404c7

    move v8, v12

    move v9, v13

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "RemoteStream"

    const/4 v5, 0x7

    const/16 v6, -0xc8

    const v7, 0x10404c7

    const v8, 0x108044a

    const v9, 0x1080438

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "FMStream"

    const/16 v5, 0x8

    const/16 v6, 0xa

    const v7, 0x1040990

    move v8, v12

    move v9, v13

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "VideoCallStream"

    const/16 v5, 0x9

    const/16 v6, 0xb

    const v7, 0x10404c6

    move v8, v14

    move v9, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "SystemStream"

    const/16 v5, 0xa

    const v7, 0x1040992

    const v8, 0x1080904

    const v9, 0x1080906

    move v6, v11

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    new-instance v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const-string v4, "TTSStream"

    const/16 v5, 0xb

    const/16 v6, 0x9

    const v7, 0x1040990

    move v8, v12

    move v9, v13

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->TTSStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v1, v0, v11

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->TTSStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    iput p4, p0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    iput p5, p0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    iput p6, p0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    iput-boolean p7, p0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    return-object v0
.end method
