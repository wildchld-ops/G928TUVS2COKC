.class public Lcom/sec/daliviews/debug/DebugServerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugServerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static native startNativeDebugServer()V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/sec/daliviews/debug/DebugServerReceiver;->startNativeDebugServer()V

    return-void
.end method
