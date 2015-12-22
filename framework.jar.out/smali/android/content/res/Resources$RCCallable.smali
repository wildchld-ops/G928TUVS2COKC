.class Landroid/content/res/Resources$RCCallable;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RCCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;"
    }
.end annotation


# instance fields
.field file:Ljava/lang/String;

.field final key:J

.field res:Landroid/content/res/Resources;

.field final synthetic this$0:Landroid/content/res/Resources;

.field value:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/content/res/Resources;J)V
    .locals 1

    iput-object p1, p0, Landroid/content/res/Resources$RCCallable;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/content/res/Resources$RCCallable;->value:Landroid/util/TypedValue;

    iput-object p3, p0, Landroid/content/res/Resources$RCCallable;->file:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/res/Resources$RCCallable;->res:Landroid/content/res/Resources;

    iput-wide p5, p0, Landroid/content/res/Resources$RCCallable;->key:J

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v10, 0x2000

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/content/res/Resources$RCCallable;->file:Ljava/lang/String;

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Landroid/content/res/Resources$RCCallable;->this$0:Landroid/content/res/Resources;

    iget-object v5, v5, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v6, p0, Landroid/content/res/Resources$RCCallable;->value:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->assetCookie:I

    iget-object v7, p0, Landroid/content/res/Resources$RCCallable;->file:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    iget-object v5, p0, Landroid/content/res/Resources$RCCallable;->res:Landroid/content/res/Resources;

    iget-object v6, p0, Landroid/content/res/Resources$RCCallable;->value:Landroid/util/TypedValue;

    iget-object v7, p0, Landroid/content/res/Resources$RCCallable;->file:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/content/res/Resources$RCCallable;->value:Landroid/util/TypedValue;

    iget v5, v5, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/res/Resources$RCCallable;->file:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from drawable resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/res/Resources$RCCallable;->value:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Resources$RCCallable;->call()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method
