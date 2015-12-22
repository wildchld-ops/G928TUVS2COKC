.class public final enum Landroid/app/im/InjectionConstants$FeatureType;
.super Ljava/lang/Enum;
.source "InjectionConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/im/InjectionConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/im/InjectionConstants$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum CONTENT_PROVIDER:Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum CONTEXT_MENU:Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum OPTIONS_MENU:Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum PREFERENCE:Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum PREFERENCE_HEADER:Landroid/app/im/InjectionConstants$FeatureType;

.field public static final enum SCALE_VIEW:Landroid/app/im/InjectionConstants$FeatureType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "OPTIONS_MENU"

    const-string/jumbo v2, "options"

    invoke-direct {v0, v1, v4, v2}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->OPTIONS_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "CONTEXT_MENU"

    const-string v2, "context"

    invoke-direct {v0, v1, v5, v2}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->CONTEXT_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "DYNAMIC_VIEW"

    const-string v2, "dynamic_view"

    invoke-direct {v0, v1, v6, v2}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "PREFERENCE_HEADER"

    const-string/jumbo v2, "preference_header"

    invoke-direct {v0, v1, v7, v2}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE_HEADER:Landroid/app/im/InjectionConstants$FeatureType;

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "PREFERENCE"

    const-string/jumbo v2, "preference"

    invoke-direct {v0, v1, v8, v2}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE:Landroid/app/im/InjectionConstants$FeatureType;

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "CONTENT_PROVIDER"

    const/4 v2, 0x5

    const-string v3, "content_provider"

    invoke-direct {v0, v1, v2, v3}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->CONTENT_PROVIDER:Landroid/app/im/InjectionConstants$FeatureType;

    new-instance v0, Landroid/app/im/InjectionConstants$FeatureType;

    const-string v1, "SCALE_VIEW"

    const/4 v2, 0x6

    const-string/jumbo v3, "scale_view"

    invoke-direct {v0, v1, v2, v3}, Landroid/app/im/InjectionConstants$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->SCALE_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/app/im/InjectionConstants$FeatureType;

    sget-object v1, Landroid/app/im/InjectionConstants$FeatureType;->OPTIONS_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/im/InjectionConstants$FeatureType;->CONTEXT_MENU:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/im/InjectionConstants$FeatureType;->DYNAMIC_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE_HEADER:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/im/InjectionConstants$FeatureType;->PREFERENCE:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/app/im/InjectionConstants$FeatureType;->CONTENT_PROVIDER:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/app/im/InjectionConstants$FeatureType;->SCALE_VIEW:Landroid/app/im/InjectionConstants$FeatureType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/im/InjectionConstants$FeatureType;->$VALUES:[Landroid/app/im/InjectionConstants$FeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/app/im/InjectionConstants$FeatureType;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/im/InjectionConstants$FeatureType;
    .locals 1

    const-class v0, Landroid/app/im/InjectionConstants$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionConstants$FeatureType;

    return-object v0
.end method

.method public static values()[Landroid/app/im/InjectionConstants$FeatureType;
    .locals 1

    sget-object v0, Landroid/app/im/InjectionConstants$FeatureType;->$VALUES:[Landroid/app/im/InjectionConstants$FeatureType;

    invoke-virtual {v0}, [Landroid/app/im/InjectionConstants$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/im/InjectionConstants$FeatureType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/im/InjectionConstants$FeatureType;->text:Ljava/lang/String;

    return-object v0
.end method
