.class public Lcom/samsung/android/telephony/GsmAlphabetCode;
.super Ljava/lang/Object;
.source "GsmAlphabetCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B

.field private static final TAG:Ljava/lang/String; = "GsmAlphabetCode"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I

.field public static final UDH_SEPTET_COST_LENGTH:I

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I

.field public static mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/16 v0, 0x1b

    sput-byte v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->GSM_EXTENDED_ESCAPE:B

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->UDH_SEPTET_COST_LENGTH:I

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->UDH_SEPTET_COST_ONE_SHIFT_TABLE:I

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->UDH_SEPTET_COST_TWO_SHIFT_TABLES:I

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    const/4 v0, 0x6

    sput v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->UDH_SEPTET_COST_CONCATENATED_MESSAGE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/GsmAlphabet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    return-void
.end method

.method public static CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v0

    return v0
.end method

.method public static charToGsm(CZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "GsmAlphabetCode"

    const-string v1, "GsmAlphabetCode: charToGsm"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v0

    return v0
.end method

.method public static charToGsmExtended(C)I
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v0

    return v0
.end method

.method public static convertEachCharacter(C)C
    .locals 2

    const-string v0, "GsmAlphabetCode"

    const-string v1, "GsmAlphabetCode: convertEachCharacter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v0

    return v0
.end method

.method public static countGsmSeptets(C)I
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(C)I

    move-result v0

    return v0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v0

    return v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;

    return-object v0
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    return v0
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    const-class v1, Lcom/samsung/android/telephony/GsmAlphabetCode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    const-class v1, Lcom/samsung/android/telephony/GsmAlphabetCode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsmExtendedToChar(I)C
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v0

    return v0
.end method

.method public static gsmToChar(I)C
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v0

    return v0
.end method

.method public static isGsmSeptets(C)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    return v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 1

    sget-object v0, Lcom/samsung/android/telephony/GsmAlphabetCode;->mWrappedGsmAlphabet:Lcom/android/internal/telephony/GsmAlphabet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    return-void
.end method
