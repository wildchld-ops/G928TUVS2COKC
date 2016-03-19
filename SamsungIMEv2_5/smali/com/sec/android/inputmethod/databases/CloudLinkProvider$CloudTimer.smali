.class Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;
.super Landroid/os/Handler;
.source "CloudLinkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/CloudLinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudTimer"
.end annotation


# static fields
.field private static final START_CLOUD_TIMEOUT:I = 0x320


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Lcom/sec/android/inputmethod/databases/CloudLinkProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;-><init>(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->startDownload()V

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p0, v0, v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
