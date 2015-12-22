.class public final enum Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;
.super Ljava/lang/Enum;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TalkbackGranularityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

.field public static final enum CHARACTER_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

.field public static final enum DEFAULT_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

.field public static final enum LINE_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

.field public static final enum PARAGRAPH_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

.field public static final enum WORD_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

.field private static gValues:[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    const-string v1, "DEFAULT_GRANULARITY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->DEFAULT_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    const-string v1, "CHARACTER_GRANULARITY"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->CHARACTER_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    const-string v1, "WORD_GRANULARITY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->WORD_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    const-string v1, "LINE_GRANULARITY"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->LINE_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    const-string v1, "PARAGRAPH_GRANULARITY"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->PARAGRAPH_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->DEFAULT_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->CHARACTER_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->WORD_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->LINE_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->PARAGRAPH_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->$VALUES:[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->values()[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->gValues:[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->gValues:[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->$VALUES:[Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    return-object v0
.end method
