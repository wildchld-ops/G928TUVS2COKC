.class public final enum Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
.super Ljava/lang/Enum;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/inw/renderer/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RendererType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/myscript/atk/inw/renderer/Renderer$RendererType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

.field public static final enum RendererTypeEraser:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

.field public static final enum RendererTypeFilled:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

.field public static final enum RendererTypeMarker:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

.field public static final enum RendererTypePressure:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

.field public static final enum RendererTypeSelected:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

.field public static final enum RendererTypeSimple:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const-string v1, "RendererTypeSimple"

    invoke-direct {v0, v1, v3}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeSimple:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    new-instance v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const-string v1, "RendererTypePressure"

    invoke-direct {v0, v1, v4}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypePressure:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    new-instance v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const-string v1, "RendererTypeMarker"

    invoke-direct {v0, v1, v5}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeMarker:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    new-instance v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const-string v1, "RendererTypeEraser"

    invoke-direct {v0, v1, v6}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeEraser:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    new-instance v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const-string v1, "RendererTypeSelected"

    invoke-direct {v0, v1, v7}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeSelected:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    new-instance v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const-string v1, "RendererTypeFilled"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeFilled:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    sget-object v1, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeSimple:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypePressure:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeMarker:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeEraser:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeSelected:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeFilled:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->$VALUES:[Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    .locals 1

    const-class v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    return-object v0
.end method

.method public static values()[Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->$VALUES:[Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    invoke-virtual {v0}, [Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    return-object v0
.end method
