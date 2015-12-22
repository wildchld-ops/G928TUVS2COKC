.class public final enum Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;
.super Ljava/lang/Enum;
.source "ViewDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/ViewDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

.field public static final enum NORMAL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

.field public static final enum UNINSTALL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

.field private static gValues:[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->NORMAL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    new-instance v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->UNINSTALL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    sget-object v1, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->NORMAL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->UNINSTALL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->$VALUES:[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-static {}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->values()[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->gValues:[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->gValues:[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->$VALUES:[Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    return-object v0
.end method
