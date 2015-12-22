.class public Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.implements Lmf/org/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field static final ANY_TYPE:Ljava/lang/String; = "anyType"

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4

.field protected static final DV_ANYATOMICTYPE:S = 0x1ds

.field protected static final DV_ANYSIMPLETYPE:S = 0x0s

.field protected static final DV_ANYURI:S = 0x11s

.field protected static final DV_BASE64BINARY:S = 0x10s

.field protected static final DV_BOOLEAN:S = 0x2s

.field protected static final DV_DATE:S = 0x9s

.field protected static final DV_DATETIME:S = 0x7s

.field protected static final DV_DAYTIMEDURATION:S = 0x1cs

.field protected static final DV_DECIMAL:S = 0x3s

.field protected static final DV_DOUBLE:S = 0x5s

.field protected static final DV_DURATION:S = 0x6s

.field protected static final DV_ENTITY:S = 0x17s

.field protected static final DV_FLOAT:S = 0x4s

.field protected static final DV_GDAY:S = 0xds

.field protected static final DV_GMONTH:S = 0xes

.field protected static final DV_GMONTHDAY:S = 0xcs

.field protected static final DV_GYEAR:S = 0xbs

.field protected static final DV_GYEARMONTH:S = 0xas

.field protected static final DV_HEXBINARY:S = 0xfs

.field protected static final DV_ID:S = 0x15s

.field protected static final DV_IDREF:S = 0x16s

.field protected static final DV_INTEGER:S = 0x18s

.field protected static final DV_LIST:S = 0x19s

.field protected static final DV_NOTATION:S = 0x14s

.field protected static final DV_PRECISIONDECIMAL:S = 0x13s

.field protected static final DV_QNAME:S = 0x12s

.field protected static final DV_STRING:S = 0x1s

.field protected static final DV_TIME:S = 0x8s

.field protected static final DV_UNION:S = 0x1as

.field protected static final DV_YEARMONTHDURATION:S = 0x1bs

.field static final NORMALIZE_FULL:S = 0x2s

.field static final NORMALIZE_NONE:S = 0x0s

.field static final NORMALIZE_TRIM:S = 0x1s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field static final SPECIAL_PATTERN_NAME:S = 0x2s

.field static final SPECIAL_PATTERN_NCNAME:S = 0x3s

.field static final SPECIAL_PATTERN_NMTOKEN:S = 0x1s

.field static final SPECIAL_PATTERN_NONE:S = 0x0s

.field static final SPECIAL_PATTERN_STRING:[Ljava/lang/String;

.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static final WS_FACET_STRING:[Ljava/lang/String;

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field static final fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fDVNormalizeType:[S

.field static final fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field static final fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field private static final gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;


# instance fields
.field public enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fAnonymous:Z

.field private fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fBounded:Z

.field private fBuiltInKind:S

.field private fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

.field private fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field private fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fEnumerationSize:I

.field private fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

.field private fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fFacetsDefined:S

.field private fFinalSet:S

.field private fFinite:Z

.field private fFixedFacet:S

.field private fFractionDigits:I

.field private fIsImmutable:Z

.field private fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fLength:I

.field private fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

.field private fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

.field private fMaxExclusive:Ljava/lang/Object;

.field private fMaxInclusive:Ljava/lang/Object;

.field private fMaxLength:I

.field private fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fMinExclusive:Ljava/lang/Object;

.field private fMinInclusive:Ljava/lang/Object;

.field private fMinLength:I

.field private fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field private fNumeric:Z

.field private fOrdered:S

.field private fPattern:Ljava/util/Vector;

.field private fPatternStr:Ljava/util/Vector;

.field private fPatternType:S

.field private fTargetNamespace:Ljava/lang/String;

.field private fTotalDigits:I

.field private fTypeName:Ljava/lang/String;

.field private fValidationDV:S

.field private fVariety:S

.field private fWhiteSpace:S

.field public fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x1e

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v1, 0x0

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/StringDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/16 v0, 0x1e

    new-array v0, v0, [S

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-short v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NCName"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "preserve"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "replace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "collapse"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v1, 0x0

    const-string v2, "anySimpleType"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v2, "anyAtomicType"

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x31

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    iput-short p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz p3, :cond_0

    const/16 v0, 0x1d

    if-eq p3, v0, :cond_0

    if-ne p3, v4, :cond_1

    :cond_0
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    :goto_0
    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    iput-boolean p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short p9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void

    :cond_1
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    return v0
.end method

.method private appendEnumString(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calcFundamentalFacets()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setOrdered()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNumeric()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setBounded()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setCardinality()V

    return-void
.end method

.method private checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v6, v6, v7

    invoke-virtual {v6, v4, p1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    :goto_0
    return-void

    :cond_0
    iget-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move-object v5, v4

    check-cast v5, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v1

    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v3, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-gez v0, :cond_2

    :cond_1
    iput-object v5, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v5, v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    aget-object v6, v3, v0

    iput-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v6, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_1

    invoke-virtual {v5, v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v6, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catchall_0
    move-exception v6

    iput-object v5, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    throw v6

    :cond_4
    iget-object v6, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v6, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_0
.end method

.method private checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v10, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v22, v0

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v22, v0

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v9, v0, :cond_0

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-maxLength-valid"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_1

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-minLength-valid"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-length-valid"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x800

    move/from16 v22, v0

    if-eqz v22, :cond_f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v14

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_3

    :goto_1
    if-nez v11, :cond_f

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-enumeration-valid"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v15

    if-eq v14, v15, :cond_5

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v15, v0, :cond_5

    :cond_4
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_e

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-eq v14, v0, :cond_6

    const/16 v22, 0x2b

    move/from16 v0, v22

    if-ne v14, v0, :cond_d

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v20

    :goto_2
    if-eqz v4, :cond_9

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v21

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/4 v8, 0x0

    :goto_4
    move/from16 v0, v20

    if-lt v8, v0, :cond_a

    :cond_7
    move/from16 v0, v20

    if-ne v8, v0, :cond_e

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v20, 0x0

    goto :goto_2

    :cond_9
    const/16 v21, 0x0

    goto :goto_3

    :cond_a
    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v12

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v13

    if-eq v12, v13, :cond_c

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_b

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v13, v0, :cond_c

    :cond_b
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v12, v0, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_7

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-fractionDigits-valid"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_10
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-totalDigits-valid"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_11
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x20

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_12

    if-eqz v2, :cond_12

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-maxInclusive-valid"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_12
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_13

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-maxExclusive-valid"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_14

    if-eqz v2, :cond_14

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-minInclusive-valid"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_14
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_15

    new-instance v22, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v23, "cvc-minExclusive-valid"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v22

    :cond_15
    return-void
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v0, 0x1d

    if-gt p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2a

    if-gt p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0
.end method

.method private getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v15

    :goto_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    add-int/lit8 v11, v21, -0x1

    :goto_1
    if-gez v11, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v18, 0x0

    :cond_1
    :goto_2
    if-eqz v18, :cond_a

    new-instance v21, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v22, "cvc-datatype-valid.1.2.1"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v26, v0

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v21

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    new-instance v21, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v22, "cvc-pattern-valid"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v21

    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v18, 0x0

    :goto_3
    goto/16 :goto_2

    :cond_7
    const/16 v18, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-static {v15}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v18, 0x0

    :goto_4
    goto/16 :goto_2

    :cond_9
    const/16 v18, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p3

    iput-object v15, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p3

    iput-object v7, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p3

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_5
    return-object v7

    :cond_b
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    new-instance v16, Ljava/util/StringTokenizer;

    const-string v21, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    new-array v7, v8, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/4 v12, 0x1

    :goto_6
    if-eqz v12, :cond_e

    move/from16 v21, v8

    :goto_7
    move/from16 v0, v21

    new-array v13, v0, [S

    if-nez v12, :cond_c

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    move/from16 v22, v0

    aput-short v22, v13, v21

    :cond_c
    new-array v14, v8, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v10, 0x0

    :goto_8
    if-lt v10, v8, :cond_f

    new-instance v20, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;-><init>([Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-eqz v12, :cond_12

    const/16 v21, 0x2b

    :goto_9
    move/from16 v0, v21

    move-object/from16 v1, p3

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p3

    iput-object v14, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance v21, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v0, v13

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object/from16 v0, p3

    iput-object v15, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v7, v20

    goto/16 :goto_5

    :cond_d
    const/4 v12, 0x0

    goto :goto_6

    :cond_e
    const/16 v21, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v21

    aput-object v21, v7, v10

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_10
    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v21, v0

    check-cast v21, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v21, v14, v10

    if-eqz v12, :cond_11

    aget-object v21, v14, v10

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    move/from16 v21, v0

    aput-short v21, v13, v10

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    :cond_12
    const/16 v21, 0x2c

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    const/4 v10, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v10, v0, :cond_15

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v10, v0, :cond_17

    new-instance v21, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v22, "cvc-datatype-valid.1.2.3"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-direct/range {v21 .. v23}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v21

    :cond_14
    move-object/from16 v5, p1

    goto :goto_a

    :cond_15
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v21, v0

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    goto/16 :goto_5

    :catch_0
    move-exception v21

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :cond_17
    if-eqz v10, :cond_18

    const-string v21, " | "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    aget-object v9, v21, v10

    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    const/16 v21, 0x7b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v21, 0x7d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_19
    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    const-string v21, " : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c
.end method

.method protected static getGDVs()[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    invoke-virtual {v0}, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-object v0
.end method

.method private getPrimitiveDV(S)S
    .locals 1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-ne p3, v2, :cond_2

    :cond_1
    :goto_1
    move v3, v0

    :goto_2
    return v3

    :cond_2
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p1, :cond_3

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_2

    :cond_8
    move-object v2, p3

    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-ne v3, v4, :cond_a

    :cond_9
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    goto :goto_0

    :cond_a
    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    const/4 v1, 0x0

    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    check-cast p3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, p1, p2, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    goto :goto_2

    :cond_b
    move-object v3, p3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    check-cast p3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p3

    goto/16 :goto_0
.end method

.method private isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    if-eqz p3, :cond_0

    move-object v1, p3

    check-cast v1, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_0

    if-ne p3, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p3

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    goto :goto_0
.end method

.method private isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4

    if-eqz p3, :cond_0

    move-object v2, p3

    check-cast v2, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x1

    if-ne p1, v5, :cond_6

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v6, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    :goto_6
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_a
    add-int/lit8 v5, v3, -0x1

    if-lt v1, v5, :cond_8

    goto :goto_6
.end method

.method private setBounded()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v3, v6, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    :cond_0
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    :cond_1
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_4
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    :cond_5
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_7
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    array-length v3, v2

    if-lez v3, :cond_8

    aget-object v3, v2, v5

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    :cond_8
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_9

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_9
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v3

    if-eqz v3, :cond_a

    aget-object v3, v2, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v3

    if-eq v0, v3, :cond_b

    :cond_a
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCardinality()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_4

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    :cond_4
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_5

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    :cond_5
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_6

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->specialCardinalityCheck()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_7
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_8
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_9
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_a

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    :cond_a
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_b
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_c
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_d

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_d
    aget-object v2, v1, v0

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinite()Z

    move-result v2

    if-nez v2, :cond_e

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setNumeric()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    :cond_2
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_3

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    :cond_3
    aget-object v2, v1, v0

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNumeric()Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setOrdered()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v7, v5, :cond_1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iput-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_2
    iget-short v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v4, v7

    if-nez v4, :cond_3

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v6

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v1

    if-eqz v1, :cond_5

    move v2, v5

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v6

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v7, :cond_6

    move v0, v5

    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v7, v7

    if-ge v3, v7, :cond_4

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    :cond_4
    if-eqz v2, :cond_c

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v5, v5, v6

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v3

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v7

    if-ne v1, v7, :cond_a

    move v2, v5

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v3

    iget-short v7, v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v7, :cond_b

    move v0, v5

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move v2, v6

    goto :goto_4

    :cond_b
    move v0, v6

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    iput-short v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_d
    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0
.end method

.method private specialCardinalityCheck()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private whiteSpaceValue(S)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    if-nez p4, :cond_0

    sget-object p4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V

    return-void
.end method

.method applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v18, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct/range {v18 .. v18}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v5

    and-int/lit8 v19, p2, 0x1

    if-eqz v19, :cond_1

    and-int/lit8 v19, v5, 0x1

    if-nez v19, :cond_3c

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "length"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    and-int/lit8 v19, p2, 0x2

    if-eqz v19, :cond_2

    and-int/lit8 v19, v5, 0x2

    if-nez v19, :cond_3d

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "minLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    and-int/lit8 v19, p2, 0x4

    if-eqz v19, :cond_3

    and-int/lit8 v19, v5, 0x4

    if-nez v19, :cond_3e

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "maxLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    and-int/lit8 v19, p2, 0x8

    if-eqz v19, :cond_4

    and-int/lit8 v19, v5, 0x8

    if-nez v19, :cond_3f

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "pattern"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_4
    and-int/lit8 v19, p2, 0x10

    if-eqz v19, :cond_5

    and-int/lit8 v19, v5, 0x10

    if-nez v19, :cond_40

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "whiteSpace"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_5
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_6

    and-int/lit16 v0, v5, 0x800

    move/from16 v19, v0

    if-nez v19, :cond_41

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "enumeration"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_6
    and-int/lit8 v19, p2, 0x20

    if-eqz v19, :cond_7

    and-int/lit8 v19, v5, 0x20

    if-nez v19, :cond_44

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_7
    const/4 v13, 0x1

    and-int/lit8 v19, p2, 0x40

    if-eqz v19, :cond_8

    and-int/lit8 v19, v5, 0x40

    if-nez v19, :cond_47

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_8
    const/4 v13, 0x1

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_9

    and-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_4c

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_a

    and-int/lit16 v0, v5, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_51

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_a
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_b

    and-int/lit16 v0, v5, 0x200

    move/from16 v19, v0

    if-nez v19, :cond_54

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "totalDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_b
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_c

    and-int/lit16 v0, v5, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_55

    const-string v19, "cos-applicable-facets"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "fractionDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_c
    if-eqz p4, :cond_d

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    :cond_d
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    const-string/jumbo v19, "minLength-less-than-equal-to-maxLength"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_f

    const-string/jumbo v19, "maxInclusive-maxExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const-string/jumbo v19, "minInclusive-minExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    if-eqz v16, :cond_11

    const-string/jumbo v19, "minInclusive-less-than-equal-to-maxInclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    if-eqz v16, :cond_12

    const-string/jumbo v19, "minExclusive-less-than-equal-to-maxExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    const-string/jumbo v19, "minExclusive-less-than-maxInclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    const-string/jumbo v19, "minInclusive-less-than-maxExclusive"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    const-string/jumbo v19, "fractionDigits-totalDigits"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    const-string/jumbo v19, "length-minLength-maxLength.1.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_17

    const-string/jumbo v19, "length-minLength-maxLength.2.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const-string/jumbo v19, "length-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1f

    :cond_19
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    const-string/jumbo v19, "length-minLength-maxLength.1.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_1b

    const-string/jumbo v19, "length-minLength-maxLength.1.2.a"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1c

    const-string/jumbo v19, "length-minLength-maxLength.1.2.b"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1d

    const-string/jumbo v19, "length-minLength-maxLength.2.1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_1e

    const-string/jumbo v19, "length-minLength-maxLength.2.2.a"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1f

    const-string/jumbo v19, "length-minLength-maxLength.2.2.b"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_56

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    const-string/jumbo v19, "minLength-less-than-equal-to-maxLength"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_21

    const-string/jumbo v19, "minLength-less-than-equal-to-maxLength"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "maxLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_23

    const-string/jumbo v19, "maxLength-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_24

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "totalDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_25

    const-string/jumbo v19, "totalDigits-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_26

    const-string/jumbo v19, "fractionDigits-totalDigits"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v19, v0

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    if-eqz v19, :cond_29

    :cond_28
    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "fractionDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2a

    const-string/jumbo v19, "fractionDigits-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    :goto_e
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2b

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "whiteSpace"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    if-nez v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c

    const-string/jumbo v19, "whiteSpace-valid-restriction.1"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "preserve"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    const-string/jumbo v19, "whiteSpace-valid-restriction.1"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "replace"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    if-nez v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e

    const-string/jumbo v19, "whiteSpace-valid-restriction.2"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_2f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_30
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_31

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_59

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_32
    :goto_f
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-nez v19, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_33

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_33
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-nez v19, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_35

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-nez v19, :cond_35

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-nez v19, :cond_35

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_36

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_37

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_37

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_37

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_38

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_38

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_38

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_39

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-nez v19, :cond_39

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_3a

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_3a

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :cond_3a
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v19, v0

    if-nez v19, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v19, v0

    if-eqz v19, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    :cond_3b
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v20, v0

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x1

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_1

    :cond_3d
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x2

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_2

    :cond_3e
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x4

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_3

    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v14, 0x0

    :try_start_0
    new-instance v15, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "X"

    invoke-interface/range {p5 .. p5}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v15

    :goto_10
    if-eqz v14, :cond_4

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x8

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_4

    :catch_0
    move-exception v7

    const-string v19, "InvalidRegex"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_40
    move-object/from16 v0, p1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x10

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_5

    :cond_41
    move-object/from16 v0, p1

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p1

    iget-object v8, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;-><init>(Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    const/4 v10, 0x0

    :goto_11
    move/from16 v0, v17

    if-lt v10, v0, :cond_42

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_6

    :cond_42
    if-eqz v8, :cond_43

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->setNSContext(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :cond_43
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    aput-object v12, v19, v20
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :catch_1
    move-exception v11

    const-string v19, "enumeration-valid-restriction"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_44
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_45

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_45
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-eqz v19, :cond_46

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :catch_3
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "maxInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_47
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v19, p3, 0x40

    if-eqz v19, :cond_48

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_48
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_49

    if-eqz v16, :cond_49

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    if-nez v16, :cond_4a

    const/4 v13, 0x0

    :cond_4a
    if-eqz v13, :cond_4b

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :catch_5
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "maxExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-lez v19, :cond_8

    const-string/jumbo v19, "maxExclusive-valid-restriction.2"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4d

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4d
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4e

    if-eqz v16, :cond_4e

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    if-nez v16, :cond_4f

    const/4 v13, 0x0

    :cond_4f
    if-eqz v13, :cond_50

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :catch_7
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "minExclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-gez v19, :cond_9

    const-string/jumbo v19, "minExclusive-valid-restriction.3"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_51
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_52

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_52
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-eqz v19, :cond_53

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_53
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_9
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_a

    :catch_8
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :catch_9
    move-exception v11

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v19, "FacetValueFromBase"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "minInclusive"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_b

    :cond_55
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_c

    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_57

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_57

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "minLength"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_57
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_20

    const-string/jumbo v19, "minLength-valid-restriction"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_58
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    move/from16 v19, v0

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v19, v0

    if-eqz v19, :cond_2a

    const-string v19, "FixedFacetValue"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "fractionDigits"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    :goto_17
    if-gez v10, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    :goto_18
    if-ltz v10, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_18

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_17

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_f
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V
    .locals 7

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "anyType"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v3, :cond_6

    :cond_5
    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_2
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    if-nez v3, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    if-ne v3, p1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_1
    if-eq v0, p1, :cond_4

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v3, :cond_5

    :cond_4
    if-ne v0, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    goto :goto_1
.end method

.method protected getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActualEnumeration()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getBounded()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return v0
.end method

.method public getBuiltInKind()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return v0
.end method

.method public getDefinedFacets()S
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v0, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    goto :goto_0
.end method

.method public getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    goto :goto_0
.end method

.method public getEnumerationTypeList()Lmf/org/apache/xerces/xs/ShortList;
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    :goto_0
    return-object v2

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v1, v2, [S

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-lt v0, v2, :cond_2

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v2, v1, v3}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v2, v2, v0

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    const/16 v3, 0x800

    if-eq p1, v3, :cond_0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSMultiValueFacet;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSMultiValueFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSFacet;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_b

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_b

    :cond_0
    const/16 v0, 0xa

    new-array v8, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v7, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x10

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v1, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v4, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v1, 0x2

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    const/4 v4, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v1, 0x4

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    const/4 v4, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x200

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    const/4 v4, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_11

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x400

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_6
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v0, :cond_7

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x20

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    :goto_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v0, :cond_8

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x40

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    :goto_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v0, :cond_9

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x80

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    :goto_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v0, :cond_a

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x100

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    :goto_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_a
    if-lez v7, :cond_17

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_a
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_b
    return-object v0

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_11
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v1, 0x400

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v4, 0x0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    :goto_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_15
    const/4 v5, 0x0

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    goto :goto_9

    :cond_17
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_a

    :cond_18
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_b
.end method

.method public getFinal()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    return v0
.end method

.method public getFinite()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return v0
.end method

.method public getFixedFacets()S
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_0
.end method

.method public getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
    .locals 4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v3, :cond_0

    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    :goto_0
    return-object v3

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-direct {v3, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v0, v0, v1

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method public getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
    .locals 6

    const/16 v5, 0x18

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v3, :cond_0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v3, :cond_0

    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "\\c+"

    aput-object v3, v2, v1

    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v1, :cond_7

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    array-length v4, v2

    invoke-direct {v3, v2, v4}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "\\i\\c*"

    aput-object v3, v2, v1

    goto :goto_2

    :cond_4
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "\\i\\c*"

    aput-object v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    const-string v4, "[\\i-[:]][\\c-[:]]*"

    aput-object v4, v2, v3

    goto :goto_2

    :cond_5
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v3, v5, :cond_6

    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "[\\-+]?[0-9]+"

    aput-object v3, v2, v1

    goto :goto_2

    :cond_6
    new-array v2, v1, [Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 8

    const/16 v3, 0x18

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v2, :cond_4

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v2, v3, :cond_4

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    const/4 v0, 0x0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    const/16 v3, 0x8

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_3

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    const/16 v3, 0x800

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v4

    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    invoke-direct {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v2

    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getNumeric()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return v0
.end method

.method public getOrdered()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return v0
.end method

.method public getPrimitiveKind()S
    .locals 3

    const/4 v0, 0x1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-ne v1, v0, :cond_3

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_3

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 3

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_1

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v1, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getType()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariety()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    goto :goto_0
.end method

.method public getWhitespace()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/DatatypeException;

    const-string v1, "dt-whitespace"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    return v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "anyType"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_7

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_7

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_7

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    :cond_7
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDefinedFacet(S)Z
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v2, :cond_0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v2, :cond_3

    if-eq p1, v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x18

    if-ne v2, v3, :cond_4

    if-eq p1, v4, :cond_1

    const/16 v2, 0x400

    if-eq p1, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFinal(S)Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedFacet(S)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v3, 0x18

    if-ne v2, v3, :cond_2

    const/16 v2, 0x400

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isIDType()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v4, 0x15

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 11

    if-nez p1, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    iget-short v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_2

    sget-object v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    iget-short v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-short v6, v9, v10

    if-nez v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    instance-of v9, p1, Ljava/lang/StringBuffer;

    if-nez v9, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    move-object v7, p1

    check-cast v7, Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_4

    const-string v9, ""

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    if-ne p2, v9, :cond_9

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_6

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v9, 0x9

    if-eq v0, v9, :cond_7

    const/16 v9, 0xa

    if-eq v0, v9, :cond_7

    const/16 v9, 0xd

    if-ne v0, v9, :cond_8

    :cond_7
    const/16 v9, 0x20

    invoke-virtual {v7, v1, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v4, v3

    :goto_3
    if-lt v1, v5, :cond_a

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v9, 0x9

    if-eq v0, v9, :cond_d

    const/16 v9, 0xa

    if-eq v0, v9, :cond_d

    const/16 v9, 0xd

    if-eq v0, v9, :cond_d

    const/16 v9, 0x20

    if-eq v0, v9, :cond_d

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v7, v4, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_3

    :cond_b
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v9, 0x9

    if-eq v0, v9, :cond_c

    const/16 v9, 0xa

    if-eq v0, v9, :cond_c

    const/16 v9, 0xd

    if-eq v0, v9, :cond_c

    const/16 v9, 0x20

    if-eq v0, v9, :cond_c

    :goto_5
    add-int/lit8 v9, v5, -0x1

    if-ge v1, v9, :cond_e

    if-nez v2, :cond_e

    add-int/lit8 v3, v4, 0x1

    const/16 v9, 0x20

    invoke-virtual {v7, v4, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v9, v5, -0x1

    if-lt v1, v9, :cond_b

    goto :goto_5

    :cond_e
    move v3, v4

    goto :goto_4
.end method

.method reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public setAnonymous(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method protected setDVs([Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-void
.end method

.method protected setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    goto :goto_0
.end method

.method public setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method protected setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object v1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object v1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_2
    return-void
.end method

.method public validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p3

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
