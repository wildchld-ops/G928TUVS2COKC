.class final Lcom/android/server/telecom/TelecomService$MainThreadRequest;
.super Ljava/lang/Object;
.source "TelecomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public arg:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomService$MainThreadRequest;-><init>()V

    return-void
.end method
