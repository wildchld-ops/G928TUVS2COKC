.class public Lcom/android/systemui/twscreenmanager/TwScreenManagerService$TwScreenManagerBinder;
.super Landroid/os/Binder;
.source "TwScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/twscreenmanager/TwScreenManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwScreenManagerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/twscreenmanager/TwScreenManagerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/twscreenmanager/TwScreenManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwScreenManagerService$TwScreenManagerBinder;->this$0:Lcom/android/systemui/twscreenmanager/TwScreenManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
