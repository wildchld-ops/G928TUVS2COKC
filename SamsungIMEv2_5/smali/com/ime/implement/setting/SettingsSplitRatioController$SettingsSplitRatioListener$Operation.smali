.class public final enum Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;
.super Ljava/lang/Enum;
.source "SettingsSplitRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

.field public static final enum START_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

.field public static final enum STOP_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    const-string v1, "START_CHANGING_SPLIT_RATIO"

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    new-instance v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    const-string v1, "STOP_CHANGING_SPLIT_RATIO"

    invoke-direct {v0, v1, v3}, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    sget-object v1, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->$VALUES:[Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;
    .locals 1

    const-class v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    return-object v0
.end method

.method public static values()[Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;
    .locals 1

    sget-object v0, Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->$VALUES:[Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    invoke-virtual {v0}, [Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ime/implement/setting/SettingsSplitRatioController$SettingsSplitRatioListener$Operation;

    return-object v0
.end method
