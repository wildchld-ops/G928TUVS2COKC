.class Lcom/android/systemui/qs/QsDatabaseUtils$3;
.super Ljava/lang/Object;
.source "QsDatabaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QsDatabaseUtils;->handleRetailMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QsDatabaseUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$3;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils$3;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->updateRetailMode()V
    invoke-static {v0}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$300(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    return-void
.end method
